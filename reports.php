<?php

use Project\Classes\Models\tables;
use Project\Classes\Models\lovaas_results;
use Project\Classes\Models\lovaas_category;
use Project\Classes\Models\lovaas_questions;
use Project\Classes\Models\patient;

require_once('include/header.php');


$patient_id = $request->get('patientid');
$patients = new patient;
$patient_result = $patients->selectId("*", "$patient_id");

$lovaas_category = new lovaas_category;
$lovaas_cats = $lovaas_category->selectAll();

$lovaas_questions = new lovaas_questions;
$lovaas_ques = $lovaas_questions->selectAll();

$lovaas_results = new lovaas_results;
$lovaas_results_arr = $lovaas_results->selectWhere("*", "patient_id = $patient_id");

$tables_select = new tables;

require_once('include/navbar.php');
?>

<section class="main-banner text-white d-flex justify-content-center align-items-center text-center">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6">
                <h1>Reports</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reprehenderit
                    illum odit doloremque sed distinctio cum sapiente reiciendis modi, soluta minima numquam consectetur
                    iure enim hic..</p>
            </div>
        </div>
    </div>
</section>

<div class="toggle">
    <div class="main-box">
        <div id="patient-info" class="card bg-box" style="width: 18rem;">
            <img src="<?= URL ?>assets/images/uploads/patients/<?= $patient_result['photo'] ?>" class="img-card"
                alt="child">
            <div class="card-body">
                <a href="patient-profile.php?patientid=<?= $patient_result['id'] ?>" class="dark-text">
                    <h5 class="text-center"><?= $patient_result['name'] ?></h5>
                </a>
                <p class="card-text mb-0">Age : <?= $patient_result['age'] ?></p>
                <p class="card-text">Caregiver Name : <?= $patient_result['caregiver_name'] ?></p>
            </div>
        </div>
        <div id="toggle-info" class="button-show text-white p-2">
            <i class="fas fa-info-circle"></i>
            <span class="m-0">Patient info</span>
        </div>
    </div>
</div>

<?php if (!empty($lovaas_results_arr)) { ?>
<div class="list-arr reports py-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
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
                </div>
            </div>
            <div class="col-lg-9">
                <div class="tab-content" id="nav-tabContent">
                    <!-- Notices -->
                    <div class="tab-pane fade show active bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-notice"
                        role="tabpanel" aria-labelledby="list-notice-list">
                        <div class="tab-pane fade show active bg-box" id="list-notice" role="tabpanel"
                            aria-labelledby="list-notice-list">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pills-notice-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-notice" type="button" role="tab"
                                        aria-controls="pills-notice" aria-selected="true">Notice</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-adir-tab" data-bs-toggle="pill"
                                        data-bs-target="#pills-adir" type="button" role="tab" aria-controls="pills-adir"
                                        aria-selected="false">ADIR</button>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <!-- Notice -->
                                <div class="tab-pane fade show active" id="pills-notice" role="tabpanel"
                                    aria-labelledby="pills-notice-tab">
                                    <div class="row">
                                        <div class="col-md-12 mt-3 rounded">
                                            <button type="button" class="secondary-btn float-end btn ml-4">Generate
                                                PDF</button>
                                            <button type="button" class="secondary-btn float-end btn">Print</button>
                                        </div>
                                    </div>
                                    <div class="report px-lg-5 px-3 py-4 mt-3">
                                        <div class="row justify-content-between align-items-center head">
                                            <div class="col-md-8">
                                                <div class="row align-items-center">
                                                    <div class="col-md-2 col-3">
                                                        <img src="<?= URL; ?>assets/images/autism.png" alt=""
                                                            class="img-fluid">
                                                    </div>
                                                    <div class="col-md-6 col-6 p-0 text-white">
                                                        <h1 class="mb-0 h3 dark-text">Autism</h1>
                                                        <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p class="pt-2"> The result provided here is generated by Artificial
                                                    Intelligence screening tool based on behavioural tests that can
                                                    pinpoint Autism Spectrum traits and is not diagnosis. If you are
                                                    concerned that the respondent is autistic, discuss
                                                    your concerns with a health professional.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h6 class="dark-text">
                                                    Here are the answers you provided:
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="bg-box py-3 my-3">
                                            <div class="container-fluid">
                                                <div class="row justify-content-between align-items-center bg-box cat">
                                                    <div class="col-lg-10">
                                                        <h5>Lorem ipsum dolor sit amet consectetur
                                                            adipisicing elit.</h5>
                                                    </div>
                                                </div>
                                                <div class="pt-3">
                                                    <ul>
                                                        <li class="report_prgraph_content">impaired eye contact and
                                                            body language</li>
                                                        <li class="report_prgraph_content">impaired eye contact and
                                                            body language</li>
                                                        <li class="report_prgraph_content">impaired eye contact and
                                                            body language</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row pt-3">
                                            <div class="col-md-12">
                                                <p> For your reference, based on conventional autism screening AQ-10
                                                    technique, autistic traits have been identified
                                                    in the respondent given the provided information. The AQ-10 score
                                                    for the respondent is 7. This result is not
                                                    obtained from our AI.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ADIR -->
                                <div class="tab-pane fade show " id="pills-adir" role="tabpanel"
                                    aria-labelledby="pills-adir-tab">
                                    <div class="row">
                                        <div class="col-md-12 mt-3 rounded">
                                            <button type="button" class="secondary-btn float-end btn ml-4">Generate
                                                PDF</button>
                                            <button type="button" class="secondary-btn float-end btn">Print</button>
                                        </div>
                                    </div>
                                    <div class="report px-lg-5 px-3 py-4 mt-3">
                                        <div class="row justify-content-between align-items-center head">
                                            <div class="col-md-8">
                                                <div class="row align-items-center">
                                                    <div class="col-md-2 col-3">
                                                        <img src="<?= URL; ?>assets/images/autism.png" alt=""
                                                            class="img-fluid">
                                                    </div>
                                                    <div class="col-md-6 col-6 p-0 text-white">
                                                        <h1 class="mb-0 h3 dark-text">Autism</h1>
                                                        <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p class="pt-2"> think about paragraphs in terms of
                                                    thematic unity: a paragraph is a sentence or a group of
                                                    sentences that supports one central, unified idea. Paragraphs add
                                                    one
                                                    idea at a time to your broader
                                                    argument sentences that supports one central, unified idea.
                                                    Paragraphs
                                                    add one idea at a time to your broader
                                                    argument
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h6 class="dark-text">
                                                    here are the answer of provide:
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="report-table table-responsive mt-2">
                                            <table class="table table-hover table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Questions</th>
                                                        <th>Result</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php for ($i = 0; $i < 5; $i++) : ?>
                                                    <tr>
                                                        <td>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                            Voluptate
                                                        </td>
                                                        <td>No</td>
                                                    </tr>
                                                    <?php endfor ?>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row pt-3">
                                            <div class="col-md-12">
                                                <p> Lorem ipsum dolor sit amet consecteturLorem ipsum dolor sit amet
                                                    consectetur adipisicing elit. Voluptate
                                                    adipisicing dolor sit amet consecteturLorem ipsum dolor sit amet
                                                    consectetur adipisicing elit. Voluptate
                                                    adipis elit. VoluptateLorem ipsum dolor sit amet consectetur
                                                    adipisicing
                                                    elit. Voluptate
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Attached Report   -->
                    <div class="tab-pane fade bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-attched-report"
                        role="tabpanel" aria-labelledby="list-attched-report-list">
                        <div class="row">
                            <div class="col-md-12 mt-3 rounded">
                                <button type="button" class="secondary-btn float-end btn ml-4">Generate PDF</button>
                                <button type="button" class="secondary-btn float-end btn">Print</button>
                            </div>
                        </div>
                        <div class="report px-lg-5 px-3 py-4 mt-3">
                            <div class="row justify-content-between align-items-center head">
                                <div class="col-md-8">
                                    <div class="row align-items-center">
                                        <div class="col-md-2 col-3">
                                            <img src="<?= URL; ?>assets/images/autism.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-md-6 col-6 p-0 text-white">
                                            <h1 class="mb-0 h3 dark-text">Autism</h1>
                                            <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="pt-2"> think about paragraphs in terms of
                                        thematic unity: a paragraph is a sentence or a group of
                                        sentences that supports one central, unified idea. Paragraphs add one
                                        idea at a time to your broader
                                        argument sentences that supports one central, unified idea. Paragraphs
                                        add one idea at a time to your broader
                                        argument
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="dark-text">
                                        here are the answer of provide:
                                    </h6>
                                </div>
                            </div>
                            <div class="report-table table-responsive mt-2">
                                <table class="table table-hover table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Questions</th>
                                            <th>Result</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php for ($i = 0; $i < 5; $i++) : ?>
                                        <tr>
                                            <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                            </td>
                                            <td>No</td>
                                        </tr>
                                        <?php endfor ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <p> Lorem ipsum dolor sit amet consecteturLorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Voluptate
                                        adipisicing dolor sit amet consecteturLorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Voluptate
                                        adipis elit. VoluptateLorem ipsum dolor sit amet consectetur adipisicing
                                        elit. Voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Evaluation History -->
                    <div class="tab-pane fade bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-evaluation-history"
                        role="tabpanel" aria-labelledby="list-evaluation-history-list">
                        <div class="row">
                            <div class="col-md-12 mt-3 rounded">
                                <button type="button" class="secondary-btn float-end btn ml-4">Generate PDF</button>
                                <button type="button" class="secondary-btn float-end btn">Print</button>
                            </div>
                        </div>
                        <div class="report px-lg-5 px-3 py-4 mt-3">
                            <div class="row justify-content-between align-items-center head">
                                <div class="col-md-8">
                                    <div class="row align-items-center">
                                        <div class="col-md-2 col-3">
                                            <img src="<?= URL; ?>assets/images/autism.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-md-6 col-6 p-0 text-white">
                                            <h1 class="mb-0 h3 dark-text">Autism</h1>
                                            <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="pt-2"> think about paragraphs in terms of
                                        thematic unity: a paragraph is a sentence or a group of
                                        sentences that supports one central, unified idea. Paragraphs add one
                                        idea at a time to your broader
                                        argument sentences that supports one central, unified idea. Paragraphs
                                        add one idea at a time to your broader
                                        argument
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="dark-text">
                                        here are the answer of provide:
                                    </h6>
                                </div>
                            </div>
                            <div class="report-table table-responsive mt-2">
                                <table class="table table-hover table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Questions</th>
                                            <th>Result</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php for ($i = 0; $i < 5; $i++) : ?>
                                        <tr>
                                            <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                            </td>
                                            <td>No</td>
                                        </tr>
                                        <?php endfor ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <p> Lorem ipsum dolor sit amet consecteturLorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Voluptate
                                        adipisicing dolor sit amet consecteturLorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Voluptate
                                        adipis elit. VoluptateLorem ipsum dolor sit amet consectetur adipisicing
                                        elit. Voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- DSM 5 -->
                    <div class="tab-pane fade bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-dsm" role="tabpanel"
                        aria-labelledby="list-dsm-list">
                        <div class="report px-lg-5 px-3 py-4 mt-3">
                            <div class="row justify-content-between align-items-center head">
                                <div class="col-md-8">
                                    <div class="row align-items-center">
                                        <div class="col-md-2 col-3">
                                            <img src="<?= URL; ?>assets/images/autism.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-md-6 col-6 p-0 text-white">
                                            <h1 class="mb-0 h3 dark-text">Autism</h1>
                                            <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="pt-2"> The result provided here is generated by Artificial
                                        Intelligence screening tool based on behavioural tests that can
                                        pinpoint Autism Spectrum traits and is not diagnosis. If you are
                                        concerned that the respondent is autistic, discuss
                                        your concerns with a health professional.
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="dark-text">
                                        Here are the answers you provided:
                                    </h6>
                                </div>
                            </div>
                            <div class="bg-box py-3 my-3">
                                <div class="container-fluid">
                                    <div class="row justify-content-between align-items-center bg-box cat">
                                        <div class="col-lg-10">
                                            <h5>Lorem ipsum dolor sit amet consectetur
                                                adipisicing elit.</h5>
                                        </div>
                                        <div class="col-lg-2">
                                            <strong class="red">Degree : 4</strong>
                                        </div>
                                    </div>
                                    <table class="table table-hover table-striped table-bordered mt-4">
                                        <thead>
                                            <tr>
                                                <th>Questions</th>
                                                <th>Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php for ($i = 0; $i < 5; $i++) : ?>
                                            <tr>
                                                <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                                </td>
                                                <td>No</td>
                                            </tr>
                                            <?php endfor ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <p> For your reference, based on conventional autism screening AQ-10
                                        technique, autistic traits have been identified
                                        in the respondent given the provided information. The AQ-10 score
                                        for the respondent is 7. This result is not
                                        obtained from our AI.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Scale -->
                    <div class="tab-pane fade bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-scale" role="tabpanel"
                        aria-labelledby="list-scale-list">
                        <div class="report px-lg-5 px-3 py-4 mt-3">
                            <div class="row justify-content-between align-items-center head">
                                <div class="col-md-8">
                                    <div class="row align-items-center">
                                        <div class="col-md-2 col-3">
                                            <img src="<?= URL; ?>assets/images/autism.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-md-6 col-6 p-0 text-white">
                                            <h1 class="mb-0 h3 dark-text">Autism</h1>
                                            <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="pt-2"> The result provided here is generated by Artificial
                                        Intelligence screening tool based on behavioural tests that can
                                        pinpoint Autism Spectrum traits and is not diagnosis. If you are
                                        concerned that the respondent is autistic, discuss
                                        your concerns with a health professional.
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="dark-text">
                                        Here are the answers you provided:
                                    </h6>
                                </div>
                            </div>
                            <div class="bg-box py-3 my-3">
                                <div class="container-fluid">
                                    <div class="row justify-content-between align-items-center bg-box cat">
                                        <div class="col-lg-10">
                                            <h5>Lorem ipsum dolor sit amet consectetur
                                                adipisicing elit.</h5>
                                        </div>
                                        <div class="col-lg-2">
                                            <strong class="red">Degree : 4</strong>
                                        </div>
                                    </div>
                                    <table class="table table-hover table-striped table-bordered mt-4">
                                        <thead>
                                            <tr>
                                                <th>Questions</th>
                                                <th>Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php for ($i = 0; $i < 5; $i++) : ?>
                                            <tr>
                                                <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate
                                                </td>
                                                <td>No</td>
                                            </tr>
                                            <?php endfor ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <p> For your reference, based on conventional autism screening AQ-10
                                        technique, autistic traits have been identified
                                        in the respondent given the provided information. The AQ-10 score
                                        for the respondent is 7. This result is not
                                        obtained from our AI.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Lovass-->
                    <div class="tab-pane fade bg-box rounded p-lg-5 p-2 mt-lg-0 mt-4" id="list-lovaas" role="tabpanel"
                        aria-labelledby="list-lovaas-list">
                        <div class="row">
                            <div class="col-md-12 mt-3 rounded">
                                <button type="button" id="cmd" class="secondary-btn float-end btn ml-4">Generate
                                    PDF</button>
                                <button type="button" class="secondary-btn float-end btn"
                                    onclick='PrintElem("testprint")'>Print</button>
                            </div>
                        </div>
                        <div class="report px-lg-5 px-3 py-4 mt-3" id="testprint">
                            <div class="row justify-content-between align-items-center head">
                                <div class="col-md-8">
                                    <div class="row align-items-center">
                                        <div class="col-md-2 col-3">
                                            <img src="<?= URL; ?>assets/images/autism.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-md-6 col-6 p-0 text-white">
                                            <h1 class="mb-0 h3 dark-text">Autism</h1>
                                            <p class="m-0 p-0 dark-text">Specialist Helper</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="dark-text mt-lg-0 mt-3">Tue, Apr 13 2021 4:36 AM</h5>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-md-12">
                                    <h5>Patient</h5>
                                    <div class="d-flex flex-wrap">
                                        <p class="mx-2 mb-1">Name : <strong> <?= $patient_result['name'] ?> </strong>
                                        </p>
                                        <p class="mx-2 mb-1">Age : <strong> <?= $patient_result['age'] ?> </strong>
                                        </p>
                                        <p class="mx-2 mb-1">Gender : <strong> <?= $patient_result['gender'] ?>
                                            </strong> </p>
                                        <p class="mx-2 mb-1">Number of brothers : <strong>
                                                <?= $patient_result['No_of_bro'] ?>
                                            </strong> </p>
                                        <p class="mx-2 mb-1">Rank among brothers : <strong>
                                                <?= $patient_result['arr_btw_bro'] ?>
                                            </strong> </p>
                                        <p class="mx-2 mb-1">Class : <strong> <?= $patient_result['class'] ?>
                                            </strong> </p>
                                        <p class="mx-2 mb-1">School : <strong> <?= $patient_result['school'] ?>
                                            </strong> </p>
                                    </div>
                                    <h5 class="mt-2">Caregiver</h5>
                                    <div class="d-flex flex-wrap ">
                                        <p class="mx-2">Name : <strong> <?= $patient_result['caregiver_name'] ?>
                                            </strong> </p>
                                        <p class="mx-2">Relationship with patient since : <strong>
                                                <?= $patient_result['caregiver_relationship'] ?>
                                            </strong> </p>
                                        <p class="mx-2">Phone number : <strong>
                                                <?= $patient_result['caregiver_phone'] ?>
                                            </strong> </p>
                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="dark-text">
                                        Here are the answers you provided:
                                    </h6>
                                </div>
                            </div>
                            <?php foreach ($lovaas_cats as $lovaas_cat) : ?>
                            <div class="bg-box py-3 my-3">
                                <div class="container-fluid">
                                    <div class="row justify-content-between align-items-center bg-box cat">
                                        <div class="col-lg-10">
                                            <h5><?= $lovaas_cat['category'] ?></h5>
                                        </div>
                                    </div>
                                    <table class="table table-hover table-striped table-bordered my-4">
                                        <thead>
                                            <tr>
                                                <th>Questions</th>
                                                <th>Result</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                    $lovaas_category_id = $lovaas_cat['id'];
                                                    $query = "SELECT lovaas_questions.lovass_questions , lovaas_results.lovaas_question_result FROM patient JOIN lovaas_results JOIN lovaas_questions JOIN lovaas_category  ON
                                                patient.id=lovaas_results.patient_id AND lovaas_questions.id = lovaas_results.lovaas_question_id AND lovaas_category.id = lovaas_questions.lovaas_category_id WHERE lovaas_category.id= $lovaas_category_id AND patient.id= $patient_id";
                                                    $lovaas_results =  $tables_select->query($query);
                                                    $lovaas_results_report = mysqli_fetch_all($lovaas_results, MYSQLI_ASSOC);
                                                    ?>
                                            <?php if ($lovaas_results_report) { ?>
                                            <?php foreach ($lovaas_results_report as $result) : ?>
                                            <tr>
                                                <td><?= $result['lovass_questions'] ?></td>
                                                <td><?= $result['lovaas_question_result'] ?></td>
                                            </tr>
                                            <?php endforeach ?>
                                            <?php } else { ?>
                                            <td colspan="2" class="text-center">No data yet</td>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <?php endforeach ?>
                            <div class="row pt-3">
                                <div class="col-md-12">
                                    <p> For your reference, based on conventional autism screening AQ-10
                                        technique, autistic traits have been identified
                                        in the respondent given the provided information. The AQ-10 score
                                        for the respondent is 7. This result is not
                                        obtained from our AI.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } else { ?>
<div class="body_not_select text-center" style="background-color: #FDFDFD;">
    <div class="row justify-content-center pb-5">
        <div class="col-lg-6">
            <div class="not-found">
                <img src="<?= URL ?>assets/images/not_data.jpg" alt="" class="img-fluid">
                <h3>No data found!</h3>
            </div>
        </div>
    </div>
</div>
<?php } ?>
<script>
function PrintElem(elem) {
    var newstr = document.all.item(elem).innerHTML;
    var oldstr = document.body.innerHTML;
    document.body.innerHTML = newstr;
    window.print();
    document.body.innerHTML = oldstr;
    return false;
}
</script>
<?php require_once('include/footer.php'); ?>