<?php
// App configuration
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

define('APP_NAME', 'GlobeTrek Adventures');
define('ADMIN_EMAIL', 'globetrekproject@gmail.com');

// Dynamic base URL
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';
$host = $_SERVER['HTTP_HOST'] ?? 'localhost';
$scriptDir = rtrim(str_replace('\\', '/', dirname($_SERVER['SCRIPT_NAME'] ?? '/public/index.php')), '/');

define('BASE_URL', $protocol . '://' . $host . $scriptDir);

// Database configuration
define('DB_HOST', 'localhost');
define('DB_NAME', 'db_globetrek');
define('DB_USER', 'root');
define('DB_PASS', '');

// Mailtrap SMTP configuration
define('SMTP_ENABLED', true);

define('SMTP_HOST', 'smtp-relay.brevo.com');
define('SMTP_PORT', 587);


define('SMTP_USERNAME', 'a93d0e001@smtp-brevo.com');
define('SMTP_PASSWORD', 'zRNhDSfHUY8V5FXC');

define('SMTP_FROM_EMAIL', 'globetrekproject@gmail.com'); 
define('SMTP_FROM_NAME', 'GlobeTrek Adventures');