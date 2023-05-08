<?php

namespace App\Http\Controllers;

use App\Http\Resources\KategoriResource;
use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    
    public function index()
    {
        $kategori = Kategori::all();

        return KategoriResource::collection($kategori);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_kategori' => 'required',
        ]);

        $kategori = Kategori::create($request->all());
        return new KategoriResource($kategori);
    }

    public function show($id)
    {
        $kategori = Kategori::find($id);

        if($kategori==null)
        {
            return response([], 404);
        }
        return new KategoriResource($kategori);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_kategori' => 'required',
        ]);

        $kategori = Kategori::find($id);

        if($kategori==null)
        {
            return response([], 404);
        }

        $kategori->update($request->all());

        return new KategoriResource($kategori);
    }

    public function destroy($id)
    {

        $kategori = Kategori::find($id);

        if($kategori==null)
        {
            return response([], 404);
        }
        $kategori->delete();

        return response([], 200);
    }
}
