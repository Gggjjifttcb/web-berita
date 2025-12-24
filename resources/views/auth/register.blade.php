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

    <form method="POST" action="/register" autocomplete="off">
        @csrf

        <input type="text" style="display:none">
        <input type="password" style="display:none">

        <input type="text" name="name_register" placeholder="Nama Lengkap" autocomplete="new-name" required>
        <input type="email" name="email_register" placeholder="Email" autocomplete="new-email" required>
        <input type="password" name="password_register" placeholder="Password" autocomplete="new-password" required>
        <input type="password" name="password_confirm_register" placeholder="Konfirmasi Password" autocomplete="new-password" required>

        <button type="submit">Register</button>
    </form>

    <p class="register-link">
        Sudah punya akun?
        <a href="/login">Login</a>
    </p>
</div>

</body>
</html>
