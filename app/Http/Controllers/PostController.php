<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::latest()->get();
        return view('posts.index', compact('posts'));
    }

    public function create()
    {
        return view('posts.create');
    }
        public function home()
    {
        $posts = Post::latest()->get();
        return view('home', compact('posts'));
    }

        public function store(Request $request)
{
    $request->validate([
        'judul'  => 'required',
        'konten' => 'required',
        'foto'   => 'nullable|image|mimes:jpg,jpeg,png|max:2048'
    ]);

    $data = $request->only(['judul', 'konten']);

    if ($request->hasFile('foto')) {
        $data['foto'] = $request->file('foto')->store('foto', 'public');
    }

    Post::create($data);

    return redirect()->route('posts.index')
        ->with('success', 'Berita berhasil ditambahkan');
}


    public function edit($id)
    {
        $post = Post::findOrFail($id);
        return view('posts.edit', compact('post'));
    }

    public function update(Request $request, $id)
    {
        $post = Post::findOrFail($id);

        $request->validate([
            'judul' => 'required',
            'konten' => 'required',
            'foto' => 'image|mimes:jpg,jpeg,png|max:2048'
        ]);

        $data = $request->all();

        if ($request->hasFile('foto')) {
            if ($post->foto) {
                Storage::disk('public')->delete($post->foto);
            }
            $data['foto'] = $request->file('foto')->store('foto', 'public');
        }

        $post->update($data);

        return redirect()->route('posts.index');
    }

    public function destroy($id)
    {
        $post = Post::findOrFail($id);

        if ($post->foto) {
            Storage::disk('public')->delete($post->foto);
        }

        $post->delete();

        return redirect()->route('posts.index');
    }
    public function show(Post $post) 
    {
    return view('posts.show', compact('post'));
    }

}
