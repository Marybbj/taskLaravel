<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\{
    Hash,
    Auth
};
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    private $admin = 'admin@gmail.com';
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');

    }

    public function checkIsAdmin(Request $request){
        if($request->email == $this->admin) {
            $admin = User::where('email', $request->email)->first();
            if(Hash::check($request->password , Hash::make($request->password))) {
                Auth::login($admin, true);
                return redirect('admin/dashboard');
            }
        }
        return redirect()->route('login');
    }

}
