@extends('layouts.app')
@section('content')
<div class="container">
    @if(0 < count($users))
        <table border='1' class=" mx-auto">
            <tr>
                <thead>
                    <th class="p-3">Name Surname</th>
                    <th class="p-3 text-center">Course
                        <select name="course" onchange="getUsers(this, 'course')" class="form-control">
                            <option selected="selected" value="*">All</option>
                            @foreach($groups->pluck('course') as $course)
                                <option value="{{ $course }}">{{ $course }}</option>
                            @endforeach
                        </select>
                    </th>
                    <th class="p-3">Group
                        <select name="group_name" onchange="getUsers(this, 'group_name')" class="form-control">
                            <option selected="selected" value="*">All</option>
                            @foreach($groups->pluck('group_name') as $group)
                            <option value="{{ $group }}">{{ $group }}</option>
                        @endforeach
                        </select>
                    </th>
                    <th class="p-3">
                        Phone
                        <input type="text" placeholder="search in phone" class="form-control">
                    </th>
                    <th class="p-3">
                        Email
                        <input type="text" placeholder="search in email" class="form-control">
                    </th>
                </thead>
                <tbody>
                    @foreach($users as $key => $user)
                        <tr>
                            <td class="p-2">{{ $user->name }}</td>
                            <td class="p-2">  </td>
                            <td class="p-2">  </td>
                            <td class="p-2">{{ $user->phone }}</td>
                            <td class="p-2">{{ $user->email }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </tr>
        </table>
    @else
        <h3>Nothing users!</h3>
    @endif
</div>
@endsection