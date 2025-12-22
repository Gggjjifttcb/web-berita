<link rel="stylesheet" href="{{ asset('css/style.css') }}">

<div class="container">
    <div class="header">
        <h1>Blog / Berita</h1>
        <a href="{{ route('posts.create') }}" class="btn-add">
            + Tambah Berita
        </a>
    </div>

    @foreach($posts as $post)
        <div class="news-card">
            @if($post->foto)
                <img 
                    src="{{ asset('storage/'.$post->foto) }}" 
                    class="news-image"
                >
            @endif

            <div class="news-body">
                <h3 class="news-title">{{ $post->judul }}</h3>

                <p class="news-desc">
                    {{ Str::limit($post->konten, 160) }}
                </p>

                <div class="news-actions">
                    <a href="{{ route('posts.show', $post->id) }}" class="btn-detail">
                        Selengkapnya
                    </a>

                    <a href="{{ route('posts.edit', $post->id) }}" class="btn-edit">
                        Edit
                    </a>

                    <form action="{{ route('posts.destroy', $post->id) }}" method="POST" style="display:inline-block;">
                        @csrf
                        @method('DELETE')
                        <button class="btn-delete"
                            onclick="return confirm('Hapus berita?')">
                            Hapus
                        </button>
                    </form>
                </div>
            </div>
        </div>
    @endforeach
</div>
