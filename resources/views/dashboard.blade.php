@extends('layouts.app')

@section('content')
<div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
    <h1 class="text-2xl font-bold">Dashboard</h1>
    <p>Selamat datang, {{ Auth::user()->name }}!</p>
</div>
@endsection
