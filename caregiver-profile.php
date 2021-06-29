<?php

use Project\Classes\Models\caregiver;
use Project\Classes\Models\specialist;

require_once('include/header.php');
require_once('include/navbar.php');
$caregiver = new caregiver;
$specialist = new specialist;
$caregiver_id = $session->get('caregiver_id');
$select_caregiver = $caregiver->selectId("*", "$caregiver_id");
$specialist_serial_no = $select_caregiver['sp_serial_no'];
$query = "SELECT * FROM `specialist` WHERE 	serial_no = $specialist_serial_no";
$run_query = $specialist->query($query);
$select_specialist = mysqli_fetch_assoc($run_query);

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
                        <a class="list-group-item list-group-item-action" id="list-specialist-list"
                            data-bs-toggle="list" href="#list-specialist" role="tab"
                            aria-controls="list-specialist">Specialist info</a>
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
                                <form action="handle/edit-caregiver.php" method="POST" enctype="multipart/form-data">
                                    <?php if (!empty($select_caregiver['photo'] == null)) { ?>
                                    <?php if ($select_caregiver['gender'] == "male") { ?>
                                    <div class="col-lg-4 text-center m-auto">
                                        <img src="<?= URL; ?>assets/images/user-male.jpg" alt=""
                                            class="rounded shadow img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="caregiver_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } else { ?>
                                    <div class="col-lg-4 text-center m-auto">
                                        <img src="<?= URL; ?>assets/images/user-female.jpg" alt=""
                                            class="rounded shadow img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="caregiver_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <?php } else { ?>
                                    <div class="col-4 text-center col-lg-4 m-auto">
                                        <img src="<?= URL; ?>assets/images/uploads/caregiver/<?= $select_caregiver['photo'] ?>"
                                            alt="" class="rounded shadow-sm img-fluid mb-2" id="imgshow">
                                    </div>
                                    <div class="col-8 m-auto">
                                        <div class="mb-3">
                                            <input type="file" class="form-control" name="caregiver_pic" id="imgload">
                                        </div>
                                    </div>
                                    <?php } ?>
                                    <div class="w-100"></div>
                                    <div class="row justify-content-center mt-40">
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label dark-text">
                                                    Name</label>
                                                <input type="text" name="caregiver_name" class="form-control bg-white"
                                                    value="<?= $select_caregiver['name'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label dark-text">
                                                    Email</label>
                                                <input type="text" name="caregiver_email" class="form-control bg-white"
                                                    value="<?= $select_caregiver['email'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1"
                                                    class="form-label dark-text d-block">Gender </label>
                                                <select name="caregiver_gender"
                                                    class="form-select form-control bg-white"
                                                    aria-label="Default select example">
                                                    <?php if ($select_caregiver['gender'] == null) { ?>
                                                    <option selected>Open this select menu</option>
                                                    <?php } ?>
                                                    <?php if ($select_caregiver['gender'] == 'male') { ?>
                                                    <option value="male" selected>Male</option>
                                                    <?php } else { ?>
                                                    <option value="male">Male</option>
                                                    <?php } ?>
                                                    <?php if ($select_caregiver['gender'] == 'female') { ?>
                                                    <option value="female" selected>female</option>
                                                    <?php } else { ?>
                                                    <option value="female">female</option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label dark-text">Phone
                                                    number</label>
                                                <input type="number" name="caregiver_number"
                                                    class="form-control bg-white" id="telephone"
                                                    value="<?= $select_caregiver['phone'] ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <button type="submit" name="edit_caregiver"
                                            class="secondary-btn float-end btn mt-25">Save
                                            Changes</button>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="list-specialist" role="tabpanel"
                            aria-labelledby="list-specialist-list">
                            <h2 class="text-center mb-1">Specialist information</h2>
                            <div class="line bg-yellow m-auto mb-4"></div>
                            <div class="row justify-content-center">
                                <?php if (!empty($select_specialist['photo'] == null)) { ?>
                                <?php if ($select_specialist['gender'] == "female") { ?>
                                <div class="col-lg-4 text-center m-auto">
                                    <img src="<?= URL; ?>assets/images/user-female.jpg" alt=""
                                        class="rounded shadow img-fluid mb-2">
                                </div>
                                <?php } else { ?>
                                <div class="col-lg-4 text-center m-auto">
                                    <img src="<?= URL; ?>assets/images/user-male.jpg" alt=""
                                        class="rounded shadow img-fluid mb-2">
                                </div>
                                <?php } ?>
                                <?php } else { ?>
                                <div class="col-4 text-center col-lg-4 m-auto">
                                    <img src="<?= URL; ?>assets/images/uploads/specialist/<?= $select_specialist['photo'] ?>"
                                        alt="" class="rounded shadow-sm img-fluid mb-2">
                                </div>
                                <?php } ?>
                                <div class="w-100"></div>
                                <div class="text-center mt-3">
                                    <p class="mb-1">Serial Number</p>
                                    <h4><?= $select_specialist['serial_no'] ?></h4>
                                </div>
                                <div class="text-center mt-3">
                                    <p class="mb-1">Name</p>
                                    <h4><?= $select_specialist['name'] ?></h4>
                                </div>
                                <div class="text-center mt-3">
                                    <p class="mb-1">Email</p>
                                    <h5><?= $select_specialist['email'] ?></h5>
                                </div>
                                <div class="text-center mt-3">
                                    <p class="mb-1">Phone</p>
                                    <?php if ($select_specialist['phone'] == null) { ?>
                                    <h5>no data yet!</h5>
                                    <?php } else { ?>
                                    <h5><?= $select_specialist['phone'] ?></h5>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
var input = document.querySelector("#telephone");
window.intlTelInput(input, ({
    preferredCountries: ["eg"]
}));
</script>

<?php require_once('include/footer.php'); ?>