<?php

use Project\Classes\Models\autism_checker;
use Project\Classes\Models\autism_checker_question;
use Project\Classes\Models\autism_checker_results;
use Project\Classes\Models\Users;

require_once('include/header.php');
require_once('include/navbar.php');
$user = new Users;
$user_case = new autism_checker;
$autism_checker_result = new autism_checker_results;
$autism_checker_quetions = new autism_checker_question;
$query = "SELECT * FROM `autism_checker` WHERE autism_checker.user_id = $user_id";
$run_query = $user_case->query($query);
$select_case = mysqli_fetch_all($run_query, MYSQLI_ASSOC);
$user_id = $session->get('user_id');
$select_user = $user->selectId("*", "$user_id");
?>

<div class="user-profile">
    <div class="container pt-120 pb-50">
        <div class="bg-box border rounded p-5">
            <div class="row">
                <div class="col-lg-3">
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action active" id="list-profile-list"
                            data-bs-toggle="list" href="#list-profile" role="tab"
                            aria-controls="list-profile">Profile</a>
                        <a class="list-group-item list-group-item-action" id="list-results-list" data-bs-toggle="list"
                            href="#list-results" role="tab" aria-controls="list-results">Results</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="tab-content" id="nav-tabContent" style="border: 1px solid #000;padding: 25px;">
                        <div class="tab-pane fade show active" id="list-profile" role="tabpanel"
                            aria-labelledby="list-home-list">
                            <h2 class="text-center mb-1">Public profile</h2>
                            <p class="text-center">Add information about yourself </p>
                            <div class="line bg-yellow m-auto mb-4"></div>
                            <div class="row justify-content-center">
                                <form action="handle/edit-user.php" method="POST" enctype="multipart/form-data">
                                    <?php if (!empty($select_user['photo'] == null)) { ?>
                                    <?php if ($select_user['gender'] == "female") { ?>
                                    <div class="col-lg-4 text-center m-auto">
                                        <img src="<?= URL; ?>assets/images/user-female.jpg" alt=""
                                            class="rounded shadow img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="user_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } else { ?>
                                    <div class="col-lg-4 text-center m-auto">
                                        <img src="<?= URL; ?>assets/images/user-male.jpg" alt=""
                                            class="rounded shadow img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="user_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php } else { ?>
                                    <div class="col-4 text-center col-lg-4 m-auto">
                                        <img src="<?= URL; ?>assets/images/uploads/users/<?= $select_user['photo'] ?>"
                                            alt="" class="rounded shadow-sm img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="user_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <div class="w-100"></div>
                                    <div class="row justify-content-center mt-40">
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label dark-text">
                                                    Name</label>
                                                <input type="text" name="user_name" class="form-control bg-white"
                                                    value="<?= $select_user['name'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label dark-text">
                                                    Email</label>
                                                <input type="text" name="user_email" class="form-control bg-white"
                                                    value="<?= $select_user['email'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1"
                                                    class="form-label dark-text d-block">Gender </label>
                                                <select name="user_gender" class="form-select form-control bg-white"
                                                    aria-label="Default select example">
                                                    <?php if ($select_user['gender'] == null) { ?>
                                                    <option selected>Open this select menu</option>
                                                    <?php } ?>
                                                    <?php if ($select_user['gender'] == 'male') { ?>
                                                    <option value="male" selected>Male</option>
                                                    <?php } else { ?>
                                                    <option value="male">Male</option>
                                                    <?php } ?>
                                                    <?php if ($select_user['gender'] == 'female') { ?>
                                                    <option value="female" selected>female</option>
                                                    <?php } else { ?>
                                                    <option value="female">female</option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <button type="submit" name="edit_user"
                                            class="secondary-btn float-end btn mt-25">Save
                                            Changes</button>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="list-results" role="tabpanel"
                            aria-labelledby="list-specialist-list">
                            <h2 class="text-center mb-1">Results</h2>
                            <div class="line bg-yellow m-auto mb-4"></div>
                            <div class="row justify-content-center rounded">
                                <?php foreach ($select_case as $case) : ?>
                                <div class="col-lg-8 text-center my-4">
                                    <div class="bg-white p-4">
                                        <h3 class="mb-1"><?= $case['case_name'] ?></h3>
                                        <span
                                            style="opacity:0.5;"><?= date('d/m/Y', strtotime($case['created_at'])); ?></span>
                                        <span
                                            style="opacity:0.5;"><?= date('h:i a', strtotime($case['created_at'])); ?></span>
                                        <?php $case_id = $case['id'];
                                            $result = $autism_checker_result->selectWhere("*", "case_id = $case_id AND checker_question_result = 'yes'"); ?>
                                        <h5 class="mt-4">
                                            <?php if (count($result) <= 5) {
                                                    echo " You don't have a problem with Autism";
                                                } elseif (6 < count($result) and count($result) <= 12) {
                                                    echo " You probability have problem and we Advise you to visite a doctor to sure";
                                                } elseif (13 < count($result) and count($result) <= 20) {
                                                    echo " You have an Autism and better to visite an organization to solve your problem";
                                                } ?>
                                        </h5>
                                    </div>
                                </div>
                                <?php endforeach ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require_once('include/footer.php'); ?>