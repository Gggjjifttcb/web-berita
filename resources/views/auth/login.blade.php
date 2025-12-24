<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="{{ asset('css/login.css') }}">
</head>
<body>

<div class="login-box">
    <h2>Login Admin</h2>

    @if($errors->any())
        <div class="error">
            {{ $errors->first() }}
        </div>
    @endif

   <form method="POST" action="/login" autocomplete="off">
    @csrf

    <!-- Fake input untuk mengelabui browser -->
    <input type="text" style="display:none">
    <input type="password" style="display:none">

    <input
        type="email"
        name="email"
        placeholder="Email"
        autocomplete="new-email"
        required
    >

    <input
        type="password"
        name="password"
        placeholder="Password"
        autocomplete="new-password"
        required
    >

    <button type="submit">Login</button>
</form>

    <p class="register-link">
    Belum punya akun?
    <a href="/register">Daftar di sini</a>
</p>

</div>

</body>
</html>
