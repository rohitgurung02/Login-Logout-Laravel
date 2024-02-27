<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\systemController;

Route::get('/login',function(){
	return redirect('/');
});
Route::get('/',[systemController::class,'index']);
Route::get('/register',[systemController::class,'registerView']);
Route::post('/register',[systemController::class,'register'])->name('register');
Route::post('/login',[systemController::class,'authenticate'])->name('authenticate');
Route::get('/home',[systemController::class,'home'])->name('home');
Route::get('/logout',[systemController::class,'logout'])->name('logout');