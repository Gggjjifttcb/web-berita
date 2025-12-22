<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Berita Terbaru</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, sans-serif;
        }

        body {
            background: #f4f6f9;
            color: #1e293b;
        }

        a {
            text-decoration: none;
        }

        /* LAYOUT */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            display: grid;
            grid-template-columns: 3fr 1fr;
            gap: 30px;
            padding: 0 20px;
        }

        /* ===== CONTENT ===== */
        .news-card {
            background: #fff;
            border-radius: 14px;
            overflow: hidden;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,.08);
            transition: transform .3s ease;
        }

        .news-card:hover {
            transform: translateY(-6px);
        }

        .news-card img {
            width: 100%;
            height: 360px;
            object-fit: cover;
        }

        .news-body {
            padding: 22px;
        }

        .meta {
            font-size: 13px;
            color: #64748b;
            display: block;
            margin-bottom: 10px;
        }

        .news-body h2 {
            font-size: 24px;
            margin-bottom: 12px;
            line-height: 1.4;
        }

        .news-body p {
            color: #475569;
            line-height: 1.7;
            margin-bottom: 18px;
        }

        .btn-read {
            display: inline-block;
            padding: 10px 18px;
            background: #facc15;
            color: #000;
            font-weight: 600;
            border-radius: 6px;
            transition: background .3s ease;
        }

        .btn-read:hover {
            background: #eab308;
        }

        /* ===== SIDEBAR ===== */
        .sidebar {
            background: #fff;
            padding: 20px;
            border-radius: 14px;
            box-shadow: 0 10px 25px rgba(0,0,0,.08);
            height: fit-content;
        }

        .sidebar h3 {
            font-size: 18px;
            margin-bottom: 15px;
            border-bottom: 2px solid #e5e7eb;
            padding-bottom: 8px;
        }

        .search-box input {
            width: 100%;
            padding: 10px 12px;
            border-radius: 6px;
            border: 1px solid #cbd5f5;
            margin-bottom: 25px;
        }

        .archive ul {
            list-style: none;
        }

        .archive li {
            margin-bottom: 10px;
        }

        .archive a {
            color: #1d4ed8;
            font-size: 14px;
        }

        .archive a:hover {
            text-decoration: underline;
        }

        /* RESPONSIVE */
        @media (max-width: 900px) {
            .container {
                grid-template-columns: 1fr;
            }

            .news-card img {
                height: 240px;
            }
        }
    </style>
</head>
<body>

<div class="container">

    <!-- KONTEN BERITA -->
    <div>
        @foreach ($posts as $post)
            <div class="news-card">
                @if ($post->foto)
                    <img src="{{ asset('storage/'.$post->foto) }}" alt="foto berita">
                @endif

                <div class="news-body">
                    <span class="meta">
                        📰 Berita • {{ $post->created_at->format('d F Y') }}
                    </span>

                    <h2>{{ $post->judul }}</h2>

                    <p>
                        {{ \Illuminate\Support\Str::limit($post->konten, 220) }}
                    </p>

                    <a href="{{ route('posts.show', $post->id) }}" class="btn-read">
                        Selengkapnya
                    </a>
                </div>
            </div>
        @endforeach
    </div>

</div>

</body>
</html>
