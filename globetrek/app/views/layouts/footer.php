<?php
require_once __DIR__ . '/../../helpers/footer_helper.php';
$footer = footer_settings();
$currentPath = trim($_GET['url'] ?? 'home/index', '/');
?>
</main>

<footer class="main-footer">

    <div class="footer-glow footer-glow-one"></div>
    <div class="footer-glow footer-glow-two"></div>

    <div class="container footer-grid">

        <!-- Company Information -->
        <div class="footer-box footer-brand-box">
            <a class="footer-brand" href="<?= BASE_URL ?>/home/index">
                <img src="<?= BASE_URL ?>/assets/images/logo.svg" alt="GlobeTrek logo">
                <span><?= e($footer['company_name']) ?></span>
            </a>

            <p>
                <?= e($footer['tagline']) ?>
            </p>

           
        </div>

        <!-- Quick Links -->
        <div class="footer-box">
            <h3>Quick Links</h3>

            <ul class="footer-links">
                <li><a href="<?= BASE_URL ?>/home/index"><i class="fa-solid fa-angle-right"></i> Home</a></li>
                <li><a href="<?= BASE_URL ?>/home/about"><i class="fa-solid fa-angle-right"></i> About</a></li>
                <li><a href="<?= BASE_URL ?>/package/index"><i class="fa-solid fa-angle-right"></i> Packages</a></li>
                
            </ul>
        </div>

        <!-- Dynamic Contact Information -->
        <div class="footer-box">
            <h3>Contact Info</h3>

            <div class="contact-list">
                <p>
                    <i class="fa-solid fa-phone"></i>
                    <span><?= e($footer['phone']) ?></span>
                </p>

                <p>
                    <i class="fa-solid fa-envelope"></i>
                    <span><?= e($footer['email']) ?></span>
                </p>

                <p>
                    <i class="fa-solid fa-location-dot"></i>
                    <span><?= e($footer['address']) ?></span>
                </p>
            </div>
        </div>

        <!-- Social Media -->
        <div class="footer-box">
            <h3>Follow Us</h3>

            <div class="social-links">
                <a href="<?= e($footer['facebook']) ?>" aria-label="Facebook">
                    <i class="fa-brands fa-facebook-f"></i>
                </a>
                <a href="<?= e($footer['instagram']) ?>" aria-label="Instagram">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="<?= e($footer['whatsapp']) ?>" aria-label="WhatsApp">
                    <i class="fa-brands fa-whatsapp"></i>
                </a>
            </div>

            <p class="footer-note">
                Follow our latest travel offers, destination updates, and seasonal promotions.
            </p>
        </div>

    </div>

<div class="footer-bottom">
    <p>
        © <?= date('Y') ?> <?= e($footer['company_name']) ?>. All Rights Reserved.

        <span class="footer-credit">
            Developed by Mushaaraf Ali 

            <a 
                href="https://lk.linkedin.com/in/mushaarafalintr"
                target="_blank"
                class="footer-linkedin"
            >
                <i class="fa-brands fa-linkedin"></i>
            </a>
        </span>
    </p>
</div>

</footer>
</main>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const toggleButtons = document.querySelectorAll(".toggle-password");

    toggleButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            const targetId = this.getAttribute("data-target");
            const passwordInput = document.getElementById(targetId);
            const icon = this.querySelector("i");

            if (!passwordInput) return;

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            } else {
                passwordInput.type = "password";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            }
        });
    });
});
</script>

<!-- MOBILE MENU SCRIPT -->
<script>
document.addEventListener("DOMContentLoaded", function () {

    const menuBtn = document.getElementById("menuBtn");
    const navMenu = document.getElementById("mainNav");

    if (menuBtn && navMenu) {

        menuBtn.addEventListener("click", function () {

            navMenu.classList.toggle("active");

            if (navMenu.classList.contains("active")) {
                menuBtn.innerHTML = "✕";
            } else {
                menuBtn.innerHTML = "☰";
            }

        });

    }

});
</script>
</body>
</html>

