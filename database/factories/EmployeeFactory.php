<?php

namespace Database\Factories;


use App\Models\Employee;
use App\Models\Designation;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class EmployeeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Employee::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()

    {
        $designations = Designation::pluck('id')->toArray();
        return [
            // name (string) , designation_id (int, foreign key) , department (string),   company (string), salary (decimal),
            //  joining_date (date), termination_date(date),
            'employee_no' => $this->faker->randomNumber(4),
            'name' => $this->faker->name,
            /*'designation_id' => function() {
//                return factory(\App\Models\Designation::class)->create()->id;
               return  \App\Models\Designation::factory()->create()->id;
            },*/
            'designation_id' => $this->faker->randomElement($designations),
            'department' => $this->faker->sentence(2),
            'company' => $this->faker->company,
            'salary' => $this->faker->randomNumber(5),
            'joining_date' => $this->faker->dateTime,
            'termination_date' => $this->faker->dateTime,

        ];
    }
}
