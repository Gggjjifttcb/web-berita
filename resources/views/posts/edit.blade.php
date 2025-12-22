<link rel="stylesheet" href="{{ asset('css/post-edit.css') }}">

<div class="post-edit">
    <div class="post-edit-box">

        <h1>Edit Berita</h1>

        <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <label>Judul Berita</label>
            <input type="text" name="judul" value="{{ $post->judul }}" required>

            <label>Isi Berita</label>
            <textarea name="konten" rows="6" required>{{ $post->konten }}</textarea>

            <label>Foto Saat Ini</label>
            @if($post->foto)
                <img src="{{ asset('storage/'.$post->foto) }}" class="post-edit-img">
            @else
                <p class="post-edit-muted">Tidak ada foto</p>
            @endif

            <label>Ganti Foto</label>
            <input type="file" name="foto">

            <button type="submit" class="post-edit-btn">
                Update Berita
            </button>

            <a href="{{ route('posts.index') }}" class="post-edit-back">
                Kembali
            </a>

        </form>
    </div>
</div>
