<?php

use Project\Classes\Models\patient;
use Project\Classes\Models\schedule;

require_once('include/header.php');
require_once('include/navbar.php');

$patient_id = $request->get('patientid');
$session->set("patient_id", $patient_id);
$patient = new patient;
$patient_result =  $patient->selectId("*", $patient_id);
$caregiver_id = $patient_result['caregiver_id'];
$session->set("caregiver_id", $caregiver_id);

$now = new DateTime();
$now_date = $now->format("Y-m-d");
$schedule = new schedule;
$query = "SELECT * FROM `schedule` WHERE schedule_date >= '$now_date' AND patient_id = $patient_id LIMIT 1";
$run_query = $schedule->query($query);
$next_schedule = mysqli_fetch_assoc($run_query);
?>

<div class="patient-profile ">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-4">
                <div class="bg-box p-4 rounded shadow patient-data">
                    <div class="row justify-content-center personal-img">
                        <div class="col-lg-8 text-center">
                            <img src="<?= URL; ?>assets/images/child-profile.jpg" alt=""
                                class="rounded-circle img-fluid mb-2">
                            <h4><?= $patient_result['name'] ?> </h4>
                            <p class="mb-0"><?= $patient_result['age'] ?> Years old</p>
                        </div>
                    </div>
                    <div class="row justify-content-center action-btn">
                        <div class="col-xl-5 col-lg-12 col-md-5 mt-3">
                            <a href="diagnosis.php?patientid=<?= $patient_result['id'] ?>"
                                class="btn secondary-btn w-100">Diagnosis</a>
                        </div>
                        <div class="col-xl-5 col-lg-12 col-md-5 mt-3">
                            <a href="plan.php?patientid=<?= $patient_result['id'] ?>" class="btn secondary-btn w-100"
                                style="background-color: #ff5a4c;color: #fff;">Plan</a>
                        </div>
                        <div class="col-xl-5 col-lg-12 col-md-5 mt-3">
                            <a href="reports.php?patientid=<?= $patient_result['id'] ?>" class="btn secondary-btn w-100"
                                style="background-color: #00628B;color: #fff;">Reports</a>
                        </div>
                        <div class="col-xl-5 col-lg-12 col-md-5 mt-3">
                            <a href="#add-to-do" class="btn secondary-btn w-100"
                                style="background-color: #368BA9;color: #fff;" data-bs-toggle="modal">Add to do</a>
                        </div>
                        <!-- Add to do Modal -->
                        <div class="modal fade" id="add-to-do" tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Add To Do</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <form action="forms/add-to-do.php" method="post">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <input type="text" name="title" class="form-control"
                                                    placeholder="Title">
                                            </div>
                                            <div class="mb-3">
                                                <textarea class="form-control" name="description"
                                                    placeholder="leave a Description" rows="4"></textarea>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" name="add-to-do" class="btn secondary-btn">Save
                                                changes</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center next-session mt-4">
                        <div class="col-lg-10 col-md-10 bg-white p-3 shadow-sm rounded">
                            <h5>Next Session</h5>
                            <hr>
                            <?php if ($next_schedule !== null) { ?>
                            <ul class="ps-0 mt-3">
                                <li>
                                    <i class="far fa-calendar-alt yellow me-1"></i>
                                    <span>Date : <?= $next_schedule['schedule_date'] ?></span>
                                </li>
                                <li class="mt-2">
                                    <i class="far fa-clock yellow me-1"></i>
                                    <span>Time :
                                        <?= date('h:i a', strtotime($next_schedule['schedule_time'])); ?></span>
                                </li>
                            </ul>
                            <?php } else { ?>
                            <p class="text-center my-2">No date yet</p>
                            <?php } ?>
                            <button type="button" class="btn secondary-btn float-end" data-bs-toggle="modal"
                                data-bs-target="#add-new-session">
                                <i class="fas fa-plus"></i> Add New
                            </button>
                            <!-- Add new Schedule Modal -->
                            <div class="modal fade" id="add-new-session" tabindex="-1" aria-labelledby="add-new"
                                aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="add-new">Add new Schedule</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <form action="forms/schedule.php" method="post">
                                            <div class="modal-body">
                                                <div class="row align-items-end ">
                                                    <div class="col-lg-10">
                                                        <div id="duplicater" class="row align-items-end my-3">
                                                            <div class="col-lg-6">
                                                                <div class="input">
                                                                    <label
                                                                        class="form-label dark-text f-800">Date</label>
                                                                    <input type="date" id="date" name="date_0"
                                                                        class="form-control" required>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="input">
                                                                    <label
                                                                        class="form-label dark-text f-800">Time</label>
                                                                    <input type="time" id="time" name="time_0"
                                                                        class="form-control" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-1 my-3">
                                                        <button type="button" class="secondary-btn btn text-white py-0"
                                                            onclick="duplicate()">
                                                            <i class="fas fa-plus"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" name="add-schedule" class="btn secondary-btn">Save
                                                    changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 pt-lg-0 pt-4">
                <div class="bg-box rounded shadow data-info">
                    <div class="head">
                        <div class="row justify-content-between align-items-center">
                            <div class="col-xl-4 col-lg-10 col-8">
                                <div class="icon">
                                    <i class="fas fa-user fa-lg"></i>
                                </div>
                                <h4 class="d-inline-block mb-0"> Personal info </h4>
                            </div>
                            <div class="col-xl-2 col-lg-2 col-md-2 col-4">
                                <a href="#" class="btn secondary-btn w-100">Edit</a>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Patient name</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5> <?= $patient_result['name'] ?></h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Date of birth</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5><?= $patient_result['date_of_birth'] ?> </h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Age</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5> <?= $patient_result['age'] ?> years old</h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Gender</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5><?= $patient_result['gender'] ?></h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Class</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5><?= $patient_result['class'] ?></h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">School</h5>
                            </div>
                            <div class="col-lg-8 col-md-8">
                                <h5><?= $patient_result['school'] ?> </h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bg-box rounded shadow data-info mt-4">
                    <div class="head">
                        <div class="row justify-content-between align-items-center">
                            <div class="col-xl-4 col-lg-10 col-8">
                                <div class="icon">
                                    <i class="fas fa-user fa-lg"></i>
                                </div>
                                <h4 class="d-inline-block mb-0"> caregiver info </h4>
                            </div>
                            <div class="col-lg-2 col-md-2 col-4">
                                <a href="#" class="btn secondary-btn w-100">Edit</a>
                            </div>
                        </div>
                    </div>
                    <div class="info">
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Caregiver name</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5> <?= $patient_result['caregiver_name'] ?> </h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Relationship with patient since</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5> <?= $patient_result['caregiver_relationship'] ?> </h5>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-4 col-md-4">
                                <h5 class="f-400">Phone number</h5>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <h5><?= $patient_result['caregiver_phone'] ?> </h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
var i = 0;
var original = document.getElementById('duplicater');
var date = document.getElementById('date');
var time = document.getElementById('time');


function duplicate() {
    var clone = original.cloneNode(true);
    clone.id = "duplicater" + ++i;
    console.log(i);
    original.parentNode.appendChild(clone);
    // i += 1;
    date.setAttribute('name', 'date_' + i);
    time.setAttribute('name', 'time_' + i);

}
</script>

<?php
require_once('include/footer.php');
?>