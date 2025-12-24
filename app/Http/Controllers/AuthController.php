<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    // ================= LOGIN =================
    public function showLogin()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email'    => 'required|email',
            'password' => 'required'
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            return redirect('/posts');
        }

        return back()->withErrors([
            'email' => 'Email atau password salah'
        ]);
    }

    // ================= REGISTER =================
    public function showRegister()
    {
        return view('auth.register');
    }
    
    public function register(Request $request)
{
    $request->validate([
        'name_register' => 'required',
        'email_register' => 'required|email|unique:users,email',
        'password_register' => 'required|min:6',
        'password_confirm_register' => 'same:password_register'
    ]);

    User::create([
        'name' => $request->name_register,
        'email' => $request->email_register,
        'password' => Hash::make($request->password_register),
    ]);

    return redirect('/register')->with('success', 'Akun berhasil dibuat, silakan login');
}

    // ================= LOGOUT =================
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login');
    }
}
