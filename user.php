<?php

use Project\Classes\Models\autism_checker_question;
use Project\Classes\Models\Users;

require_once('include/header.php');

$user = new Users;
$user_id = $session->get('user_id');
$selectUser = $user->selectId("*", $user_id);
/*autism_checker_question table*/
$autism_checker_question = new autism_checker_question;
$select_questions = $autism_checker_question->selectAll();

require_once('include/navbar.php');
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

<section class="main-banner text-white d-flex justify-content-center align-items-center text-center">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-10 col-md-12">
                <h1>Welcome <?= $selectUser['name']; ?> </h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reprehenderit
                    illum odit doloremque sed distinctio cum sapiente reiciendis modi, soluta minima numquam consectetur
                    iure enim hic..</p>
            </div>
        </div>
    </div>
</section>

<div class="checker py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10 bg-box p-5 rounded">
                <form method="post" action="forms/hadnle-user-checker.php">
                    <div class="row">
                        <h2 class="p-0 mb-3 dark-title">Case Info</h2>
                        <div class="col-lg-4 ps-0">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" name="name" placeholder="Enter Case Name"
                                    required>
                                <label for="floatingInput">Enter Case Name</label>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" name="age" placeholder="Enter Case Age"
                                    required>
                                <label for="floatingInput">Enter Case Age</label>
                            </div>
                        </div>
                        <div class="col-lg-4 pe-0">
                            <div class="form-floating">
                                <select class="form-select" name="choose" aria-label="Floating label select example">
                                    <option selected>Open this select menu</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                                <label for="floatingSelect">Choose Case Gender</label>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center align-items-center rounded mt-4">
                        <h2 class="p-0 mb-4 dark-title">Answer the questions</h2>
                        <div class="max-h" style="max-height: 700px;overflow: auto;">
                            <?php foreach ($select_questions as $question) : ?>
                            <div class="row bg-white justify-content-between align-items-center p-3 mb-4">
                                <div class="col-lg-8">
                                    <?= $question['checker_qustions'] ?>
                                </div>
                                <div class="col-lg-1">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                            name="question_<?= $question['id'] ?>" value="yes">
                                        <label class="form-check-label" for="question_1">
                                            Yes
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio"
                                            name="question_<?= $question['id'] ?>" value="no">
                                        <label class="form-check-label" for="question_2">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                    <button type="submit" name="user-checker" class="btn secondary-btn float-end mt-3">Done</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php require_once('include/footer.php'); ?>