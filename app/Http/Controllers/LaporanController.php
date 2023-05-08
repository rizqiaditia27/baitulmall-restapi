<?php

namespace App\Http\Controllers;

use App\Http\Resources\LaporanResource;
use App\Models\Laporan;
use Illuminate\Http\Request;

class LaporanController extends Controller
{
    public function index()
    {
        $laporan = Laporan::all();

        return LaporanResource::collection($laporan);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_laporan' => 'required',
            'deskripsi' => 'required',
            'pdf' => 'required|mimes:pdf',
        ]);

        $pdf_file = $request->file('pdf');
        $pdf_ekstensi = $pdf_file->extension();
        $pdf_nama = date('ymdhis') . '.' . $pdf_ekstensi;
        $path = $pdf_file->storeAs('pdf', $pdf_nama);

        $data = [
            'nama_laporan' => $request->nama_laporan,
            'alamat_laporan' => $path,
            'deskripsi' => $request->deskripsi
        ];

        $laporan = Laporan::create($data);
        return new LaporanResource($laporan);
    }

    public function show($id)
    {
        $laporan = Laporan::find($id);

        if($laporan==null)
        {
            return response([], 404);
        }
        return new LaporanResource($laporan);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_laporan' => 'required',
            'deskripsi' => 'required',
        ]);

        $laporan = Laporan::find($id);

        if($laporan==null)
        {
            return response([], 404);
        }

        $laporan->update($request->all());

        return new LaporanResource($laporan);
    }

    public function destroy($id)
    {

        $laporan = Laporan::find($id);

        if($laporan==null)
        {
            return response([], 404);
        }
        $laporan->delete();

        return response([], 200);
    }
}
