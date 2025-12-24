<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="{{ asset('css/login.css') }}">
</head>
<body>

<div class="login-box">
    <h2>Register Admin</h2>

    @if (session('success'))
        <div class="alert success">
            {{ session('success') }}
        </div>
    @endif

    @if ($errors->any())
        <div class="alert error">
            {{ $errors->first() }}
        </div>
    @endif

    <form method="POST" action="/register" autocomplete="off">
        @csrf

        <input type="text" style="display:none">
        <input type="password" style="display:none">

        <input type="text" name="name_register" placeholder="Nama Lengkap" required>
        <input type="email" name="email_register" placeholder="Email" required>
        <input type="password" name="password_register" placeholder="Password" required>
        <input type="password" name="password_confirm_register" placeholder="Konfirmasi Password" required>

        <button type="submit">Register</button>
    </form>

    <p class="register-link">
        Sudah punya akun?
        <a href="/login">Login</a>
    </p>
</div>

</body>
</html>
