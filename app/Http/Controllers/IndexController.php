<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Designation;
use App\Models\Employee;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    public function display(){
        $employees = Employee::latest()->paginate(10);
        $designations = Designation::all();
        /*dd($employees);*/




        return view('index',compact('employees',),compact('designations'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    public function update(Request $request){
       /* dd($request);*/

        DB::table('employees')->where('id',$request->id)->update([
            "employee_no" => $request->employee_no,
            "name" => $request->name,
            "designation_id" => $request->designation,
            "department" => $request->department,
            "company" => $request->company,
            "salary" => $request->salary,
        ]);

        /*dd("done");*/
        return redirect('/');
    }
}
