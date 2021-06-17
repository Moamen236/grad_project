<?php

use Project\Classes\Models\lovaas_category;
use Project\Classes\Models\lovaas_questions;
use Project\Classes\Models\specialist;

require_once('include/header.php');
require_once('include/navbar.php');
$specialist_id = $session->get('specialist_id');
$specialist = new specialist;
$select_specialist = $specialist->selectId("*", $specialist_id);

$patient_id = $request->get('patientid');

$session->set('patient_id', $patient_id);

// Lovaas

$lovaas_category = new lovaas_category;
$lovaas_cats = $lovaas_category->selectAll();
$lovaas_questions = new lovaas_questions;
$lovaas_ques = $lovaas_questions->selectAll();

?>
<section class="main-banner text-white d-flex justify-content-center align-items-center text-center">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6">
                <h1>Welcome <?= $select_specialist['name'] ?> </h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reprehenderit
                    illum odit doloremque sed distinctio cum sapiente reiciendis modi, soluta minima numquam consectetur
                    iure enim hic..</p>
            </div>
        </div>
    </div>
</section>
<div class="list-arr diagnosis py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item head disabled bg-nav" aria-disabled="true">Diagnosis Process</a>
                    <a class="list-group-item list-group-item-action active" id="list-notice-list" data-bs-toggle="list"
                        href="#list-notice" role="tab" aria-controls="notice">Notice</a>
                    <a class="list-group-item list-group-item-action" id="list-attched-report-list"
                        data-bs-toggle="list" href="#list-attched-report" role="tab"
                        aria-controls="attched-report">Attched Reports</a>
                    <a class="list-group-item list-group-item-action" id="list-evaluation-history-list"
                        data-bs-toggle="list" href="#list-evaluation-history" role="tab"
                        aria-controls="evaluation-history">Evaluation History</a>
                    <a class="list-group-item list-group-item-action" id="list-dsm-list" data-bs-toggle="list"
                        href="#list-dsm" role="tab" aria-controls="dsm">DSM 5</a>
                    <a class="list-group-item list-group-item-action" id="list-scale-list" data-bs-toggle="list"
                        href="#list-scale" role="tab" aria-controls="scale">Scale</a>
                    <a class="list-group-item list-group-item-action" id="list-scale-lovaas" data-bs-toggle="list"
                        href="#list-lovaas" role="tab" aria-controls="lovaas">Lovaas</a>
                    <a class="list-group-item list-group-item-action" id="list-scale-schedule" data-bs-toggle="list"
                        href="#list-schedule" role="tab" aria-controls="schedule">Schedule</a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content bg-box pb-5 mt-lg-0 mt-5" id="nav-tabContent">
                    <!-- Notice -->
                    <div class="tab-pane fade show active bg-box" id="list-notice" role="tabpanel"
                        aria-labelledby="list-notice-list">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-notice-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-notice" type="button" role="tab" aria-controls="pills-notice"
                                    aria-selected="true">Notice</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-adir-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-adir" type="button" role="tab" aria-controls="pills-adir"
                                    aria-selected="false">ADIR</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">

                            <!-- ADIR -->
                            <div class="tab-pane fade show p-lg-5 p-2" id="pills-adir" role="tabpanel"
                                aria-labelledby="pills-adir-tab">
                                <div class="m-hight pe-4">
                                    <?php for ($i = 0; $i < 18; $i++) : ?>
                                    <div class="row bg-white rounded p-4 mb-4">
                                        <div class="col-md-10">
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                            voluptatem harum est quasi suscipit minima molestiae fuga repellat nemo?
                                        </div>
                                        <div class="col-md-2 ">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                    id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Yes
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                    id="flexRadioDefault2" checked>
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    No
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endfor ?>
                                </div>

                                <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                    <div class="col-md-10">

                                        <input type="add comment" class="w-100">
                                    </div>
                                    <div class="col-md-2">
                                        <button type="button" class="secondary-btn float-end btn">Add</button>
                                    </div>
                                </div>
                                <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                            </div>
                            <!-- Notices -->
                            <div class="tab-pane fade show active p-lg-5 p-2" id="pills-notice" role="tabpanel"
                                aria-labelledby="pills-notice-tab">
                                <div class="accordion" id="accordionExample">
                                    <?php for ($i = 0; $i < 5; $i++) : ?>
                                    <div class="accordion-item">
                                        <div class="d-flex accordion-button collapsed" data-bs-toggle="collapse"
                                            data-bs-target="#collapse<?= $i ?>" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            <div class="col-lg">
                                                <h6 class="m-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                </h6>
                                            </div>
                                        </div>
                                        <div id="collapse<?= $i ?>" class="accordion-collapse collapse"
                                            aria-labelledby="heading<?= $i ?>" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <div class="container p-0 overflow-hidden">
                                                    <div class="row bg-white rounded p-4">
                                                        <?php for ($v = 0; $v < 5; $v++) : ?>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" value=""
                                                                id="flexCheckDefault">
                                                            <label class="form-check-label" for="flexCheckDefault">
                                                                impaired eye contact and body language
                                                            </label>
                                                        </div>
                                                        <?php endfor ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endfor ?>
                                    <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                        <div class="col-md-10">

                                            <input type="add comment" class="w-100">
                                        </div>
                                        <div class="col-md-2">
                                            <button type="button" class="secondary-btn float-end btn">Add</button>
                                        </div>
                                    </div>
                                    <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- Attached Report -->
                    <div class="tab-pane fade bg-box rounded p-5" id="list-attched-report" role="tabpanel"
                        aria-labelledby="list-attched-report-list">
                        <div class="m-hight pe-4">
                            <?php for ($i = 0; $i < 6; $i++) : ?>
                            <div class="row justify-content-between align-items-center bg-white rounded p-4 mb-4">
                                <div class="col-md-10">
                                    <div class="mb-3">
                                        <label for="formFileMultiple" class="form-label">A CT scan of the brain</label>
                                        <input class="form-control" type="file" id="formFileMultiple" multiple>
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    </div>
                                </div>
                            </div>
                            <?php endfor ?>
                            <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                <div class="col-md-10">

                                    <input type="add comment" class="w-100">
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="secondary-btn float-end btn">Add</button>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                    </div>
                    <!-- Evaluation History -->
                    <div class="tab-pane fade bg-box p-5" id="list-evaluation-history" role="tabpanel"
                        aria-labelledby="list-evaluation-history-list">
                        <div class="m-hight pe-4">
                            <?php for ($i = 0; $i < 10; $i++) : ?>
                            <div class="row bg-white rounded p-4 mb-4">
                                <div class="col-md-10">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate voluptatem harum
                                    est quasi suscipit minima molestiae fuga repellat nemo?
                                </div>
                                <div class="col-md-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault"
                                            id="flexRadioDefault1">
                                        <label class="form-check-label" for="flexRadioDefault1">
                                            Yes
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="flexRadioDefault"
                                            id="flexRadioDefault2">
                                        <label class="form-check-label" for="flexRadioDefault2">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <?php endfor ?>
                            <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                <div class="col-md-10">

                                    <input type="add comment" class="w-100">
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="secondary-btn float-end btn">Add</button>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                    </div>
                    <!-- DSM 5 -->
                    <div class="tab-pane fade bg-box p-5" id="list-dsm" role="tabpanel" aria-labelledby="list-dsm-list">
                        <div class="accordion" id="accordionExample">
                            <?php for ($i = 0; $i < 5; $i++) : ?>
                            <div class="accordion-item">
                                <div class="d-flex accordion-button collapsed" data-bs-toggle="collapse"
                                    data-bs-target="#collapse<?= $i ?>" aria-expanded="true"
                                    aria-controls="collapseOne">
                                    <div class="col-lg">
                                        <h6 class="m-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.</h6>
                                    </div>
                                </div>
                                <div id="collapse<?= $i ?>" class="accordion-collapse collapse"
                                    aria-labelledby="heading<?= $i ?>" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <?php for ($a = 0; $a < 5; $a++) : ?>
                                        <div class="row bg-white rounded p-4 border-bottom">
                                            <div class="col-md-10">
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                                voluptatem harum est quasi suscipit minima molestiae fuga repellat nemo?
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        Yes
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="flexRadioDefault"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        No
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <?php endfor ?>

                                    </div>
                                </div>
                            </div>
                            <?php endfor ?>
                            <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                <div class="col-md-10">

                                    <input type="add comment" class="w-100">
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="secondary-btn float-end btn">Add</button>
                                </div>
                            </div>
                            <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                        </div>
                    </div>
                    <!-- Scale -->
                    <div class="tab-pane fade bg-box p-5" id="list-scale" role="tabpanel"
                        aria-labelledby="list-scale-list">
                        <div class="accordion" id="accordionExample">
                            <?php for ($i = 0; $i < 5; $i++) : ?>
                            <div class="accordion-item">
                                <div class="d-flex accordion-button collapsed" data-bs-toggle="collapse"
                                    data-bs-target="#collapse<?= $i ?>" aria-expanded="true"
                                    aria-controls="collapseOne">
                                    <div class="col-lg">
                                        <h6 class="m-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.</h6>
                                    </div>
                                </div>
                                <div id="collapse<?= $i ?>" class="accordion-collapse collapse"
                                    aria-labelledby="heading<?= $i ?>" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        <?php for ($a = 0; $a < 5; $a++) : ?>
                                        <div class="bg-white rounded border-bottom p-4">
                                            <h6> Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                                voluptatem harum est quasi suscipit minima molestiae fuga repellat
                                                nemo?</h6>
                                            <div class="row justify-content-center align-items-center text-center p-3">
                                                <div class="col-md-3">
                                                    <div class="form-check form-check-inline ">
                                                        <input class="form-check-input rounded-circle" type="checkbox"
                                                            id="inlineCheckbox1" value="option1">
                                                        <label class="form-check-label">0</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check form-check-inline ">
                                                        <input class="form-check-input rounded-circle" type="checkbox"
                                                            id="inlineCheckbox1" value="option1">
                                                        <label class="form-check-label" for="inlineCheckbox1">1</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check form-check-inline ">
                                                        <input class="form-check-input rounded-circle" type="checkbox"
                                                            id="inlineCheckbox1" value="option1">
                                                        <label class="form-check-label" for="inlineCheckbox1">2</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check form-check-inline ">
                                                        <input class="form-check-input rounded-circle" type="checkbox"
                                                            id="inlineCheckbox1" value="option1">
                                                        <label class="form-check-label" for="inlineCheckbox1">3</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php endfor ?>
                                    </div>
                                </div>
                            </div>
                            <?php endfor ?>
                            <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                <div class="col-md-10">

                                    <input type="add comment" class="w-100">
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="secondary-btn float-end btn">Add</button>
                                </div>
                            </div>
                            <button type="button" class="secondary-btn float-end btn mt-4">Done</button>
                        </div>
                    </div>
                    <!--Lovass-->
                    <div class="tab-pane fade bg-box p-5" id="list-lovaas" role="tabpanel"
                        aria-labelledby="list-lovaas-list">
                        <div class="accordion" id="accordionExample">
                            <div class="accordion" id="accordionExample">
                                <form action="forms/lovaas/handle-lovaas.php" method="post">
                                    <!-- <input type="hidden" name="patient_id" value="<?= $patient_id ?>"> -->
                                    <?php foreach ($lovaas_cats as $lovass_cat) : ?>
                                    <div class="accordion-item">
                                        <div class="d-flex accordion-button collapsed" data-bs-toggle="collapse"
                                            data-bs-target="#collapse<?= $lovass_cat['id'] ?>" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            <div class="col-lg">
                                                <h6 class="m-0"><?= $lovass_cat['category'] ?></h6>
                                            </div>
                                        </div>
                                        <div id="collapse<?= $lovass_cat['id'] ?>" class="accordion-collapse collapse"
                                            aria-labelledby="heading<?= $lovass_cat['id'] ?>"
                                            data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <?php $lovaas_questions_results =  $lovaas_questions->selectWhere("id , lovass_questions", "lovaas_category_id =" . $lovass_cat['id']); ?>
                                                <?php foreach ($lovaas_questions_results as $key => $lovaas_result) : ?>
                                                <div class="row bg-white rounded p-4 border-bottom">
                                                    <div class="row">
                                                        <?= $lovaas_result['id']?> -
                                                        <?= $lovaas_result['lovass_questions'] ?>
                                                    </div>
                                                    <div
                                                        class="row justify-content-around align-items-center text-center p-3">
                                                        <div class="col-lg-2 form-check ">
                                                            <input class="form-check-input" type="radio"
                                                                name="radio_<?= $lovaas_result['id'] ?>" id="radio1"
                                                                value="good">
                                                            <label class="form-check-label" for="radio1">
                                                                good
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-2 form-check ">
                                                            <input class="form-check-input" type="radio"
                                                                name="radio_<?= $lovaas_result['id'] ?>" id="radio1"
                                                                value="medium">
                                                            <label class="form-check-label" for="radio1">
                                                                medium
                                                            </label>
                                                        </div>
                                                        <div class="col-lg-2 form-check ">
                                                            <input class="form-check-input" type="radio"
                                                                name="radio_<?= $lovaas_result['id'] ?>" id="radio1"
                                                                value="weak">
                                                            <label class="form-check-label" for="radio1">
                                                                weak
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php endforeach ?>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach ?>
                                    <div class="row bg-white rounded p-4 mb-4 mt-3 ">
                                        <div class="col-md-10">
                                            <input type="text" class="w-100">
                                        </div>
                                        <div class="col-md-2">
                                            <input type="submit" name="add_comment" value="Add"
                                                class="secondary-btn float-end btn">
                                        </div>
                                    </div>
                                    <button type="submit" name="lovaas_questions"
                                        class="secondary-btn btn float-end  mt-4">Done</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Schedule -->
                    <div class="tab-pane fade bg-box" id="list-schedule" role="tabpanel"
                        aria-labelledby="list-schedule-list">
                        <div class="diagnosis-schedule p-5">
                            <h2 class="text-blue"> Add New Schedule</h2>
                            <div class="line bg-yellow"></div>
                            <form action="#">
                                <div class="row align-items-end pt-4">
                                    <div class="col-lg-11">
                                        <div id="duplicater" class="row pt-3">
                                            <div class="col-lg-6">
                                                <div class="input">
                                                    <label class="form-label dark-text f-800">Date</label>
                                                    <input type="date" class="form-control"
                                                        id="exampleFormControlInput1" required>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="input">
                                                    <label class="form-label dark-text f-800">Time</label>
                                                    <input type="time" class="form-control"
                                                        id="exampleFormControlInput1" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1">
                                        <button type="button" class="secondary-btn btn text-white py-0"
                                            onclick="duplicate()">
                                            <i class="fas fa-plus"></i></button>
                                    </div>
                                </div>
                                <button type="submit" class="secondary-btn btn float-end mt-4">Done</button>
                            </form>
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

function duplicate() {
    var clone = original.cloneNode(true);
    console.log(clone);
    clone.id = "duplicater" + ++i;
    original.parentNode.appendChild(clone);
}
</script>
<?php require_once('include/footer.php'); ?>