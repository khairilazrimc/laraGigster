<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    // show create new user form (register-form)
    public function register() {
        return view('users.register');
    }

    // store new user (register-process)
    public function store(Request $request) {
        $formFields = $request->validate([
            'name'      => ['required', 'min:3'],
            'email'     => ['required', 'email', Rule::unique('users', 'email')],
            'password'  => ['required', 'confirmed', 'min:6']
            // 'password' => 'required|confirmed|min:6' // alternatives
        ]);

        // hash password
        $formFields['password'] = bcrypt($formFields['password']);

        // create user model
        $user = User::create($formFields);
        
        // autologin
        // auth()->login($user);

        // response
        return redirect('/login/')->with('message', 'Gigster have been successfully registered. Proceed with login.');
    }

    // show create new session form (login-form)
    public function login() {
        return view('users.login');
    }

    // create new session (login-process)
    public function create(Request $request) {
        $formFields = $request->validate([
            'email'     => ['required', 'email'],
            'password'  => ['required']
        ]);

        // authentication
        if(auth()->attempt($formFields)) {
            $request->session()->regenerate();
            return redirect('/')->with('message', 'You are now logged in.');
        }

        // return back()->withErrors(['email' => 'You have entered an invalid login credentials.'])->onlyInput('email');
        return back()->with('message', 'You have entered an invalid login credentials.')->onlyInput('email');
        
    }

    // log user out
    public function logout(Request $request) {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/')->with('message', 'You have been logged out.');
    }

}
