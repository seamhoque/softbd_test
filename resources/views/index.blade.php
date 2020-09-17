<!DOCTYPE html>
{{--{{dd($designations)}}--}}
<html>
<head>
    <title>SoftBD Task</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Employees table</h2>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif

    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Employee No</th>
            <th>Name</th>
            <th>Designation</th>
            <th>Department</th>
            <th>Company</th>
            <th>Salary</th>

            <th width="280px">Action</th>
        </tr>
        @foreach ($employees as $data)
            <form action="{{route('update')}}" method="post">
                @csrf
            <tr>
                <input type="hidden" name="id" value={{$data->id}}>
                <td>{{$data->id}}</td>
                <td><input type="text" name="employee_no" value="{{$data->employee_no}}"></td>
                <td><input type="text" name="name" value="{{$data->name}}"></td>
                {{--{{ $des_id = \Illuminate\Support\Facades\DB::table('designations')->select('id')
                ->where('designations.id',$data->designation_id)->first()->id }}
                {{dd($des_id)}}--}}
                <td>
                <select name="designation" >
                @foreach($designations as $des)
                    @if($des->id ==$des_id = \Illuminate\Support\Facades\DB::table('designations')->select('id')
                ->where('designations.id',$data->designation_id)->first()->id )
                            <option value={{$des->id}} selected>{{$des->title}}</option>
                    @else
                            <option value={{$des->id}}>{{$des->title}}</option>
                    @endif
                    @endforeach
                </select>
                </td>
                {{--{{dd(\Illuminate\Support\Facades\DB::table('designations')->select('title')->where('designations.id',$data->designation_id)->first()->title)}}--}}
                {{--<td>{{\Illuminate\Support\Facades\DB::table('designations')->select('title')->where('designations.id',$data->designation_id)->first()->title}}</td>--}}
                        <td><input type="text" name="department" value="{{$data->department}}"></td>
                <td><input type="text" name="company" value="{{$data->company}}"></td>
                <td><input type="text" name="salary" value="{{$data->salary}}"></td>
                <td><button type="submit" class="btn btn-primary">Change</button></td>

            </tr>
            </form>
        @endforeach
    </table>
    {{$employees->links('pagination::bootstrap-4')}}
</div>

</body>
</html>