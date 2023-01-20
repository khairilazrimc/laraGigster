<?php

use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/hello', function() {
//     return response('<h1>Hello World</h1>', 200)
//         ->header('Content-Type', 'text/plain')
//         ->header('foo', 'bar');
// });

// Route::get('/post/{id}', function($id){
//     // dd($id);
//     ddd($id);
//     return response('Post ' . $id);
// })->where('id', '[0-9]+');

// Route::get('/search', function(Request $request){
//     return $request->name . ' ' . $request->city;
// });

// laravel welcome page
Route::get('/welcome', function () {
    return view('welcome');
});





// show all listings
Route::get('/', [ListingController::class, 'index']);

// show filtered listings
Route::get('/listings/', [ListingController::class, 'filtered']);

// show create new listing form
Route::get('/listings/create/', [ListingController::class, 'create'])->middleware('auth');

// store new listing
Route::post('/listings/', [ListingController::class, 'store'])->middleware('auth');

// show edit existing listing form
Route::get('/listings/{listing}/edit/', [ListingController::class, 'edit'])->middleware('auth');
  
// update existing listing
Route::put('/listings/{listing}/', [ListingController::class, 'update'])->middleware('auth');
  
// destroy listing
Route::delete('/listings/{listing}/', [ListingController::class, 'destroy'])->middleware('auth');

// manage listings
Route::get('/listings/manage/', [ListingController::class, 'manage'])->middleware('auth');

// show single listing (placed last in order to get away with error -> /../{error}/ )
Route::get('/listings/{listing}/', [ListingController::class, 'show']);






// show create new user form (register-form)
Route::get('/register/', [UserController::class, 'register'])->middleware('guest'); 

// store new user (register-process)
Route::post('/register/', [UserController::class, 'store'])->middleware('guest');

// show create new session form (login-form)
Route::get('/login/', [UserController::class, 'login'])->name('login')->middleware('guest');

// create new session (login-process)
Route::post('/login/', [UserController::class, 'create'])->middleware('guest');

// log user out
Route::post('/logout/', [UserController::class, 'logout'])->middleware('auth');


