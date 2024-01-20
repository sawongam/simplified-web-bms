<?php
//Check if user is logged in
session_start();
if (isset($_SESSION['AccNo'])) {
    header('Location: ../pages/dashboard/index.php');
    exit;
}

//Check if there is an GET message
$error = '';
if (isset($_GET['msg'])) {
    $error = $_GET['msg'];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sawongam Bank</title>
    <link rel="icon" href="../assets/img/logo.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/styles.css">
    <link rel="stylesheet" href="../assets/css/logres.css">
    <link rel="stylesheet" href="../assets/css/logres2.css">
</head>

<body class="body-color body-whole">

    <!-- Top Left Ellipse -->
    <div class="tl-ellipse"><img src="../assets/img/login-top-left.png" alt=""></div>

    <div class="main-container">
        <div class="row">
            <div class="form-section">
                <div class="form-wrapper">
                    <div class="logo-wrapper">
                        <a href="../index.php"><img src="../assets/img/logo.png" height="80px" alt="logo"></a>
                    </div>
                    <h1 class="login-header">Welcome to Sawongam Bank</h1>
                    <!-- Login Form  -->
                    <form action="../scripts/login_auth.php" method="POST">
                        <label class="login-label" for="accountNumber">Account Number</label>
                        <input class="textfield" type="text" id="accountNumber" name="accountNumber">
                        <small id="error-accountNumber" class="error-font"></small>
                        <div class="password-field">
                            <label class="login-label" for="password">Password</label>
                            <input class="textfield" type="password" id="password" name="password">
                            <img src="../assets/img/eye-open.png" class="password-icon" id="eye-login">
                            <small id="error-password" class="error-font">
                                <?php echo $error ?>
                            </small>
                        </div>
                        <button class="elevatedButton login-label" name="submit" type="submit">Login</button>
                    </form>
                    <p class="register-link">Don't have an account? <a class="no-underline reg-log"
                            href="register.php">Register</a></p>
                    <!-- Social Icons  -->
                    <div class="social-icons">
                        <a href="https://facebook.com/sawongam">
                            <img src="../assets/img/fb-icon.png" alt="Facebook">
                        </a>
                        <a href="#">
                            <img src="../assets/img/whats-icon.png" alt="WhatsApp">
                        </a>
                        <a href="#">
                            <img src="../assets/img/tel-icon.png" alt="Telegram">
                        </a>
                    </div>
                </div>
            </div>

            <!-- Logo Block  -->
            <div class="logo-section">
                <a href="../index.php"><img class="zoom-on-hover" src="../assets/img/logo.png" alt="Sawongam Logo"></a>
                <div class="login-block"></div>
            </div>
        </div>
    </div>

    <!-- Bottom Left Ellipse -->
    <div class="bl-ellipse"><img src="../assets/img/login-btm-left.png" alt=""></div>
    <script src="../assets/js/login.js"></script>
</body>

</html>