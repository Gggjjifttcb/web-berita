<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Models\Post;
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
