<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class EmployeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*factory('App\Models\Employee', 50)->create();*/
        \App\Models\Employee::factory()->count(50)->create();
    }
}
