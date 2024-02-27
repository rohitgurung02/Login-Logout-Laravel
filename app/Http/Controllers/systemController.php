<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use App\Models\User;


class systemController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function register(Request $request)
    {
        $student =  new User;
        $student->name = $request->name;
        $student->password = Hash::make($request->password);
        $student->save();
        return back()->with('success','Record has been added');
    }

    public function registerView()
    {
        return view('register');
    }

    public function authenticate(Request $request)
    {
        $request->validate([
            'name' =>  'required',
            'password'  =>  'required'
        ]);

        $data = $request->only('name', 'password');

        if (Auth::attempt($data)) {
            return redirect('/home');
        }else{
            return back()->with('error','Name and Password are not matched');
        }       
    }

    public function home()
    {
        if(Auth::check())
        {
            return view('/home');
        }

        return redirect('/login');
    }

    public function logout()
    {
        Session::flush();

        Auth::logout();

        return Redirect('/login');
    }
}
