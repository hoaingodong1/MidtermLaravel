<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
class T_foodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $limit = 10;
        $fake = Faker::create();
        for ($i = 0; $i < $limit; $i++) {
            DB::table('t_food')->insert([
                'name' => $fake->name,
                'image' => $fake->imageUrl(),
                'price' => $fake->numberBetween($min = 10000, $max = 20000),
                'old_price' => $fake->numberBetween($min = 30000, $max = 40000),
                'detail' => $fake->sentence,
                'type' => $fake ->name,          
                
            ]);
        }
    }
}
