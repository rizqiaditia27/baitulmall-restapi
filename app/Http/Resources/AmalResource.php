<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Carbon;

class AmalResource extends JsonResource
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
            'id' => $this->id,
            'nama_program' => $this->nama_program,
            'gambar' => $this->gambar,
            'deskripsi' => $this->deskripsi,
            'tag' => $this->tag,
            'jumlah_donasi_dibutuhkan' => $this->jumlah_donasi_dibutuhkan,
            'tanggal_input' => Carbon::parse($this->created_at)->isoFormat('D MMMM Y'),
            'tanggal_berakhir' => $this->tanggal_berakhir
        ];
    }
}
