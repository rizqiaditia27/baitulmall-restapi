<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    Schema::create('program_amal', function (Blueprint $table) {
        $table->id();
        $table->string('nama_program');
        $table->text('deskripsi');
        $table->string('tag');
        $table->string('tanggal_berakhir');
        $table->string('jumlah_donasi_dibutuhkan');
        $table->string('gambar');
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('program_amal');
    }
};
