<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Portal Berita</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="{{ asset('css/main.css') }}">
</head>
<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">📰 Portal Berita</div>
    <div class="menu">
        <a href="/">Home</a>
        <a href="/login">Login</a>
    </div>
</div>

<!-- CONTENT -->
<div class="container">

    <!-- BERITA UTAMA -->
    <div>
        @foreach ($posts as $post)
            <div class="news-card">
                @if ($post->foto)
                    <img src="{{ asset('storage/'.$post->foto) }}" alt="">
                @endif

                <div class="news-body">
                    <span class="meta">
                        {{ $post->created_at->format('d F Y') }}
                    </span>

                    <h2>{{ $post->judul }}</h2>

                    <p>
                        {{ \Illuminate\Support\Str::limit($post->konten, 220) }}
                    </p>

                    <a href="{{ route('posts.show', $post->id) }}" class="btn-read">
                        Baca Selengkapnya
                    </a>
                </div>
            </div>
        @endforeach
        <div class="pagination-wrapper">
    {{ $posts->onEachSide(0)->links('pagination::simple-default') }}
</div>
    </div>

    <!-- SIDEBAR -->
    <aside class="sidebar">
    <h3>Berita Terbaru</h3>
    <ul class="latest-news">
        @foreach ($latestPosts as $post)
            <li>
                <a href="{{ route('posts.show', $post->id) }}">
                    {{ $post->judul }}
                </a>
            </li>
        @endforeach
    </ul>
</aside>
</div>

</body>
</html>
