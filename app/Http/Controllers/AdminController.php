<?php

namespace App\Http\Controllers;

use App\{
    User,
    Group
};
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dashboard()
    {
        $users = User::where('email', '!=', 'admin@gmail.com')->get();
        $groups = Group::all();
        return view('admin.dashboard', [
            'users' => $users,
            'groups' => $groups
        ]);
    }

    public function getCourse(Request $request)
    {
        $get = Group::where("$request->field", $request->value)->get()->toArray();
        // $getUsers = User::where('group_id', $get->id)->get();
        echo '<pre>';
        print_r($get);
    }

    public function getGroups(Request $request)
    {
        $get = Group::where("$request->field", $request->value)->get();
        echo '<pre>';
        print_r($get);
    }
}
