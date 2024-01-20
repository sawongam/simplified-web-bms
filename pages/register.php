<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Sawongam Bank</title>
    <link rel="icon" href="../assets/img/logo.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/logres.css">
    <link rel="stylesheet" href="../assets/css/logres2.css">
</head>

<body class="body-color body-whole">
    <div class="container">

        <div class="image">
            <img src="../assets/img/register-d.png" class="register-d reg-d">
            <img src="../assets/img/register-bank.png" class="register-bank">
          </div>

        <div class="reg-section">
                <h1 class="login-header reg-header">Please Fill out form to Register</h1>
                <form>
                    <label class="login-label">Full Name</label>
                    <input class="textfield" type="text">
                    <label class="login-label">Address</label>
                    <input class="textfield" type="text">
                    <label class="login-label">Email</label>
                    <input class="textfield" type="email">
                    <div class="password-field">
                        <label class="login-label">Password</label>
                        <input class="textfield" type="password">
                        <img src="../assets/img/eye-open.png" class="password-icon" id="eye-login">
                    </div>
                    <div class="password-field">
                        <label class="login-label">Confirm Password</label>
                        <input class="textfield" type="password">
                        <img src="../assets/img/eye-open.png" class="password-icon" id="eye-login">
                    </div>
                    <button class="elevatedButton login-label">Register</button>
                </form>
                <p class="register-link">Already have an account? <a class="no-underline reg-log"
                        href="login.php">Login</a>
                </p>

                <div class="social-icons">
                    <a href="#"><img src="../assets/img/fb-icon.png"></a>
                    <a href="#"><img src="../assets/img/whats-icon.png"></a>
                    <a href="#"><img src="../assets/img/tel-icon.png"></a>
                </div>

        </div>

    </div>
    <script src="../assets/js/register.js"></script>
</body>

</html>