<?php
if (!$session->get('which_user')) {
    $request->redirect('index.php');
}
?>
<nav class="navbar navbar-expand-lg bg-nav">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
        </button>
        <a class="navbar-brand" href="#">
            <img src="<?= URL; ?>assets/images/autism.png" alt="logo" width="40">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <?php if ($session->get('which_user') == 'specialist') { ?>
                    <a class="nav-link active" aria-current="page" href="specialist.php">Home</a>
                    <?php } elseif ($session->get('which_user') == 'user') { ?>
                    <a class="nav-link active" aria-current="page" href="user.php">Home</a>
                    <?php } elseif ($session->get('which_user') == 'caregiver') { ?>
                    <a class="nav-link active" aria-current="page" href="caregiver.php">Home</a>
                    <?php } else { ?>
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                    <?php } ?>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="organizations.php">Orgnization</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="articales.php">Articles</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.php">Contact</a>
                </li>
            </ul>

        </div>
        <div class="dropdown pe-2">
            <div class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="assets/images/person(100x100).png" alt="" width="40px" class="rounded-circle">
            </div>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><a class="dropdown-item" href="forms/logout.php">log out</a></li>
            </ul>
        </div>
    </div>
</nav>