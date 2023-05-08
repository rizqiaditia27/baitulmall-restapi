<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class LaporanResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id_laporan' => $this->id,
            'nama_laporan' => $this->nama_laporan,
            'alamat_laporan' => $this->alamat_laporan,
            'deskripsi' => $this->deskripsi,
            'tanggal_input' => Carbon::parse($this->created_at)->isoFormat('D MMMM Y')
        ];
    }
}
