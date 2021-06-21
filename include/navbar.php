<?php
if (!$session->get('which_user')) {
    $request->redirect('index.php');
}

use Project\Classes\Models\notify_to_do;
use Project\Classes\Models\patient;
use Project\Classes\Models\schedule;

$patients = new patient;
$schedule = new schedule;
$notify_to_do = new notify_to_do;
?>

<?php if ($session->get('which_user') == 'specialist') { ?>
<?php
    $specialist_id = $session->get('specialist_id');
    $today = date("Y-m-d");
    $notif_schedule = $schedule->selectWhere("*", "schedule_date = '$today' AND specialist_id = $specialist_id");
    ?>
<nav class="navbar navbar-expand-lg bg-nav">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
        </button>
        <a class="navbar-brand" href="specialist.php">
            <img src="<?= URL; ?>assets/images/autism.png" alt="logo" width="40">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="specialist.php">Home</a>
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
        <!--== notification dropdown ==-->
        <div class="dropdown me-5 notification position-relative ">
            <a class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                <i class="fas fa-bell fa-lg"></i>
                <div class="number text-white">
                    <span><?= count($notif_schedule) ?></span>
                </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-end p-0" aria-labelledby="dropdownMenuLink">
                <?php if (!empty($notif_schedule)) { ?>
                <?php foreach ($notif_schedule as $notif) { ?>
                <?php $notif_patient_id = $notif['patient_id'];
                            $notif_patients = $patients->selectWhere("*", "id = $notif_patient_id"); ?>
                <?php foreach ($notif_patients as $patient) { ?>
                <li class="dropdown-item">
                    <div class="item py-2">
                        <span class="badge bg-light text-dark">Today session</span>
                        <p class="my-1">You have session with <strong><a
                                    href="<?= URL ?>patient-profile.php?patientid=<?= $patient['id'] ?>"
                                    class="dark-text"><?= $patient['name'] ?></a></strong>
                        </p>
                        <?php if ($notif['patient_id'] == $patient['id']) { ?>
                        <span
                            class="badge bg-light text-dark"><?= date('d/m/Y', strtotime($notif['schedule_date'])); ?></span>
                        <span
                            class="badge bg-light text-dark"><?= date('h:i a', strtotime($notif['schedule_time'])); ?></span>
                        <?php } ?>
                    </div>
                </li>
                <li>
                    <hr class="dropdown-divider m-0">
                </li>
                <?php } ?>
                <?php } ?>
                <?php } else { ?>
                <li class="dropdown-item p-5">No date Found !</li>
                <?php } ?>
            </ul>
        </div>
        <!-- ==notification dropdown== -->
        <!-- ==Profile dropdown== -->
        <div class="dropdown pe-2">
            <div class="dropdown-toggle" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="assets/images/person(100x100).png" alt="" width="40px" class="rounded-circle">
            </div>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="#">Profile</a></li>
                <li><a class="dropdown-item" href="forms/logout.php">log out</a></li>
            </ul>
        </div>
        <!-- ==Profile dropdown== -->
    </div>
</nav>

<?php } elseif ($session->get('which_user') == 'caregiver') { ?>
<?php $caregiver_id = $session->get('caregiver_id');
    $get_notify = $notify_to_do->selectWhere("*", "caregiver_id = $caregiver_id"); ?>
<nav class="navbar navbar-expand-lg bg-nav">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
        </button>
        <a class="navbar-brand" href="caregiver.php">
            <img src="<?= URL; ?>assets/images/autism.png" alt="logo" width="40">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="caregiver.php">Home</a>
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

        <!--== notification dropdown ==-->
        <div class="dropdown me-5 notification position-relative ">
            <a class=" dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                <i class="fas fa-bell fa-lg"></i>
                <div class="number text-white">
                    <span><?= count($get_notify) ?></span>
                </div>
            </a>
            <ul class="dropdown-menu dropdown-menu-end p-0" aria-labelledby="dropdownMenuLink">
                <?php if (!(empty($get_notify))) { ?>
                <?php foreach ($get_notify as $key => $notify) { ?>
                <li class="dropdown-item py-3">
                    <span class="badge bg-light text-dark">To DO</span>
                    <p class="my-1">Your have new mission from your specialist </p>
                    <p class="my-1"><strong><?= $notify['to_do_title'] ?></strong></p>
                    <?php $CurPageURL = $_SERVER['REQUEST_URI']; ?>
                    <a href="forms/add-to-do.php?notify_id=<?= $notify['id'] ?>&CurPageURL=<?= $CurPageURL ?>"
                        class="text-end "><span class="badge bg-light light-green"><i
                                class="fas fa-check-double me-2"></i>Mark as read
                        </span></a>
                </li>
                <li>
                    <hr class="dropdown-divider m-0">
                </li>
                <?php } ?>
                <?php } else { ?>
                <li class="dropdown-item p-5">No date Found !</li>
                <?php } ?>
            </ul>
        </div>
        <!-- ==notification dropdown== -->

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

<?php } elseif ($session->get('which_user') == 'user') { ?>
<nav class="navbar navbar-expand-lg bg-nav">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
        </button>
        <a class="navbar-brand" href="user.php">
            <img src="<?= URL; ?>assets/images/autism.png" alt="logo" width="40">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="user.php">Home</a>
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
<?php } ?>
use Project\Classes\Models\schedule;use Project\Classes\Models\patient;