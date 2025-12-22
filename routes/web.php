<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Models\Post;
use App\Http\Controllers\AuthController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home');
});
Route::get('post', [PostController::class, 'index']);
Route::resource('posts', PostController::class);
Route::get('/', function () {
    $posts = Post::latest()->get();
    return view('home', compact('posts'));
});
Route::get('/', function () {
    $posts = Post::latest()->get();          // konten utama
    $latestPosts = Post::latest()->limit(5)->get(); // sidebar (5 berita)

    return view('home', compact('posts', 'latestPosts'));
});
Route::get('/', function () {
    $posts = Post::latest()->paginate(5);        // 🔥 batas 5 berita
    $latestPosts = Post::latest()->limit(5)->get(); // sidebar

    return view('home', compact('posts', 'latestPosts'));
});
Route::get('/login', [AuthController::class, 'showLogin'])->name('login');
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
Route::middleware('auth')->group(function () {
    Route::resource('posts', PostController::class);
});

Route::post('/logout', function () {
    Auth::logout();
    return redirect('/login');
})->name('logout');