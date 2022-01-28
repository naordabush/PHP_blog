<?php
require_once 'app/helpers.php';

session_start();

$page_title = "ABOUT";
include_once './tpl/header.php';
?>

<main class="container flex-fill">

    <!-- PAGE HEADER -->
    <section id="main-top-content">
        <div class="row">
            <div class="col-12 mt-5 text-center">
                <h1 class="display-3 text-primary">
                    About <?= LOGO; ?>
                </h1>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quidem error reprehenderit possimus corrupti numquam architecto aperiam optio quas cupiditate voluptas.
                </p>
            </div>
        </div>
    </section>
</main>

<?php include_once './tpl/footer.php'; ?>