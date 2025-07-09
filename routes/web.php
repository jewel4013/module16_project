<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
})->name('welcome');
Route::get('/resume', function () {
    return view('resume');
})->name('resume');
Route::get('/project', function () {
    return view('projects');
})->name('project');
Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/users', [UserController::class, 'index'])->name('users');
Route::get('/users/create', [UserController::class, 'create'])->name('user-create');
