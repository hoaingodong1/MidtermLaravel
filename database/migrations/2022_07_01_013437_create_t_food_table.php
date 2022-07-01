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
        Schema::create('t_food', function (Blueprint $table) {
            
            $table ->increments('id');
            $table ->string('name',100);
            $table ->string('image');
            $table ->double('price');
            $table ->double('old_price');
            $table ->text('detail');
            $table ->string('type');
            $table ->timestamps();
           
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('t_food');
    }
};
