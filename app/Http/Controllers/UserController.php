<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::paginate(13);
        return view('users', ['userData' => $users]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('userCreate');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required',
            'mobile' => 'required|min:11|numeric',
            'otp' => 'required|min:8|numeric',            
        ]);
        User::create($request->except('_token'));


        
        session()->flash('success', 'User update successfull.');
        Log::info('Hei, a new user is insterted. The user data are..: ', [
            // 'name' => $request->name, 
            // 'email' => $request->email, 
            // 'mobile' => $request->mobile
            $request->except('_token'),
            'user-agent' => $request->header('user-agent'),
            'ip' => $request->ip(),
            'url' => $request->url(),
            'method' => $request->method()
        ]);
        return redirect()->route('users');
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
    }
}
