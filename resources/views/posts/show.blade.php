@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="{{ asset('css/show.css') }}">

<div class="container">
    <h1>{{ $post->judul }}</h1>

    @if($post->foto)
        <img src="{{ asset('storage/'.$post->foto) }}" class="news-image">
    @endif

    <p>{{ $post->konten }}</p>

    <a href="{{ url()->previous() }}" class="btn-back">← Kembali</a>
</div>
@endsection
