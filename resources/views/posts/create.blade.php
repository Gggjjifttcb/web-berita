<link rel="stylesheet" href="{{ asset('css/form-post.css') }}">

<div class="post-form">
    <div class="container">
        <h1>Tambah Berita</h1>

        <form action="{{ route('posts.store') }}" method="POST" enctype="multipart/form-data">
            @csrf

            <label>Judul Berita</label>
            <input type="text" name="judul" placeholder="Masukkan judul berita" required>

            <label>Isi Berita</label>
            <textarea name="konten" rows="6" placeholder="Masukkan isi berita" required></textarea>

            <label>Foto (Opsional)</label>
            <input type="file" name="foto">

            <button type="submit" class="btn btn-primary">
                Simpan Berita
            </button>
        </form>
    </div>
</div>
