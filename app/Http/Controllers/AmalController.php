<?php

namespace App\Http\Controllers;

use App\Http\Resources\AmalResource;
use App\Models\Amal;
use Illuminate\Http\Request;

class AmalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $amal = Amal::all();

        return AmalResource::collection($amal);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_program' => 'required',
            'gambar' => 'required',
            'deskripsi' => 'required',
            'tag' => 'required',
            'jumlah_donasi_dibutuhkan' => 'required|numeric',
            'tanggal_berakhir' => 'required'
        ]);

        $gambar_file = $request->file('gambar');
        $gambar_ekstensi = $gambar_file->extension();
        $gambar_nama = date('ymdhis') . '.' . $gambar_ekstensi;
        $path = $gambar_file->storeAs('images', $gambar_nama);

        $data = [
            'nama_program' => $request->nama_program,
            'gambar' => $path,
            'deskripsi' => $request->deskripsi,
            'tag' => $request->tag,
            'jumlah_donasi_dibutuhkan' => $request->jumlah_donasi_dibutuhkan,
            'tanggal_berakhir' => $request->tanggal_berakhir
        ];

        $amal = Amal::create($data);

        return new AmalResource($amal);
    }


    public function show($id)
    {
        $amal = Amal::find($id);

        if($amal==null)
        {
            return response([], 404);
        }
        return new AmalResource($amal);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_program' => 'required',
            'deskripsi' => 'required',
            'tag' => 'required',
            'jumlah_donasi_dibutuhkan' => 'required|numeric',
            'tanggal_berakhir' => 'required'
        ]);


        $amal = Amal::findOrFail($id);
        $amal->update($request->all());
        return new AmalResource($amal);

    }

    public function destroy($id)
    {
        $amal = Amal::find($id);

        if($amal==null)
        {
            return response([], 404);
        }

        $amal->delete();

        return response([], 200);
    }
}
