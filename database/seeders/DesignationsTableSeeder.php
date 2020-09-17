<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DesignationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*factory('App\Models\Designation', 5)->create();*/
        \App\Models\Designation::factory()->count(5)->create();
    }
}
