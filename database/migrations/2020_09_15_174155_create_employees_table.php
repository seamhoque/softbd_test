<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {   // name (string) , designation_id (int, foreign key) , department (string),   company (string), salary (decimal),
        //  joining_date (date), termination_date(date),
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->string('employee_no');
            $table->string('name');
            $table->foreignId('designation_id');
            $table->string('department');
            $table->string('company');
            $table->decimal('salary');
            $table->dateTime('joining_date');
            $table->dateTime('termination_date');
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
        Schema::dropIfExists('employees');
    }
}
