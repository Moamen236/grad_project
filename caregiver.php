<?php

use Project\Classes\Models\caregiver;
use Project\Classes\Models\to_do;
use Project\Classes\Models\specialist;
use Project\Classes\Models\tables;
use Project\Classes\Models\schedule;

require_once('include/header.php');
require_once('include/navbar.php');

$caregiver = new caregiver;
$caregiver_id = $session->get('caregiver_id');
$selectCaregiver = $caregiver->selectId("*", $caregiver_id);

/* todo table */
$todo = new to_do;
$selecttodo = $todo->selectAll();
/*doctor table*/
$specialist = new specialist;
$selectspecialist = $specialist->selectAll();
$tablesSelect = new tables;
$todoResults =  $tablesSelect->selectAs("to_do.*, specialist.name ", "to_do left JOIN specialist on to_do.specialist_id = specialist.id ",  "to_do.specialist_id = 1");
/*schedule table */
$specialist = new specialist;
$selectspecialist = $specialist->selectAll();
$tablesSelect = new tables;
$scheduleResults =   $tablesSelect->selectAs(" schedule.*, specialist.name ", "schedule left JOIN specialist on schedule.specialist_id = specialist.id ",  "schedule.specialist_id = 1");

?>

<section class="main-banner text-white d-flex justify-content-center align-items-center text-center">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-6">
                <h1>Welcome <?= $selectCaregiver['name'] ?></h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reprehenderit
                    illum odit doloremque sed distinctio cum sapiente reiciendis modi, soluta minima numquam consectetur
                    iure enim hic..</p>
            </div>
        </div>
    </div>
</section>

<section class="sp-details pt-lg-5 pb-lg-5">
    <div class="container">
        <div class="sp-details-tabs">
            <ul class="nav nav-pills row justify-content-center mb-20" id="pills-tab" role="tablist">
                <li class="nav-item col-lg-4 pt-lg-0 pt-4" role="presentation">
                    <div class="nav-link text-center py-4" id="pills-add-patient-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-add-patient" role="tab" aria-controls="pills-add-patient"
                        aria-selected="true">
                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" width="84.115" height="80"
                            viewBox="0 0 84.115 56.049" style="enable-background:new 0 0 512 512;" xml:space="preserve">
                            <g>
                                <path id="ic_done_all_24px" class="st0"
                                    d="M64.048,11.483l-5.1-5.893L36.01,32.089l5.1,5.893ZM79.388,5.59,41.111,49.811,25.988,32.381l-5.1,5.893L41.111,61.639,84.525,11.483ZM.41,38.275,20.634,61.639l5.1-5.893L5.547,32.381Z"
                                    transform="translate(-0.41 -5.59)" fill="#ff5a3c" />
                            </g>
                        </svg>
                        <h3 class="dark-title">To Do</h3>
                        <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis ipsum
                            molestiae quae ratione.</p>
                    </div>
                </li>
                <li class="nav-item col-lg-4" role="presentation">
                    <div class="nav-link text-center py-4" id="pills-schedule-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-schedule" role="tab" aria-controls="pills-schedule"
                        aria-selected="false">
                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512"
                            style="enable-background:new 0 0 512 512;" xml:space="preserve">
                            <path class="st0"
                                d="M456.8,32.1h-25.2V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1h-34.3V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1h-34.3V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1h-34.3V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1h-34.3V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1h-34.3V15c0-8.3-6.7-15-15-15s-15,6.7-15,15v17.1H55.2C24.7,32.1,0,56.9,0,87.3v369.5C0,487.3,24.7,512,55.2,512h345.4C462,512,512,462,512,400.6V87.3C512,56.9,487.3,32.1,456.8,32.1L456.8,32.1z M55.2,62.1h25.2v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h34.3v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h34.3v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h34.3v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h34.3v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h34.3v17.1c0,8.3,6.7,15,15,15s15-6.7,15-15V62.1h25.2c13.9,0,25.2,11.3,25.2,25.2v41.2H30V87.3C30,73.4,41.3,62.1,55.2,62.1L55.2,62.1z M400.6,482c-44.9,0-81.4-36.5-81.4-81.4s36.5-81.4,81.4-81.4c44.9,0,81.4,36.5,81.4,81.4C482,445.5,445.5,482,400.6,482L400.6,482z M400.6,289.2c-61.4,0-111.4,50-111.4,111.4c0,32.1,13.6,61.1,35.4,81.4H55.2C41.3,482,30,470.7,30,456.8V158.5h452v166.1C461.7,302.8,432.7,289.2,400.6,289.2z" />
                            <path class="st0"
                                d="M159.6,208.9c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S163.6,208.9,159.6,208.9z" />
                            <path class="st0"
                                d="M223.9,208.9c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6s6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S227.8,208.9,223.9,208.9z" />
                            <path class="st0"
                                d="M288.1,208.9c-4,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6s6.7,4.4,10.6,4.4c4,0,7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S292.1,208.9,288.1,208.9z" />
                            <path class="st0"
                                d="M352.4,208.9c-4,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S356.3,208.9,352.4,208.9z" />
                            <path class="st0"
                                d="M416.7,208.9c-4,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S420.6,208.9,416.7,208.9z" />
                            <path class="st0"
                                d="M95.3,273.1c-3.9,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C103.2,274.7,99.3,273.1,95.3,273.1z" />
                            <path class="st0"
                                d="M159.6,273.1c-3.9,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6s-1.6-7.8-4.4-10.6C167.4,274.7,163.6,273.1,159.6,273.1z" />
                            <path class="st0"
                                d="M223.9,273.1c-3.9,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6s1.6,7.8,4.4,10.6s6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C231.7,274.7,227.8,273.1,223.9,273.1z" />
                            <path class="st0"
                                d="M288.1,273.1c-4,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6s6.6,4.4,10.6,4.4s7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C295.9,274.7,292.1,273.1,288.1,273.1z" />
                            <path class="st0"
                                d="M95.3,337.4c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C103.2,339,99.3,337.4,95.3,337.4z" />
                            <path class="st0"
                                d="M159.6,337.4c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C167.4,339,163.6,337.4,159.6,337.4z" />
                            <path class="st0"
                                d="M223.9,337.4c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,4,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C231.7,339,227.8,337.4,223.9,337.4z" />
                            <path class="st0"
                                d="M95.3,401.7c-3.9,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S99.3,401.7,95.3,401.7z" />
                            <path class="st0"
                                d="M159.6,401.7c-3.9,0-7.8,1.6-10.6,4.4c-2.8,2.8-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6c2.8,2.8,6.7,4.4,10.6,4.4s7.8-1.6,10.6-4.4c2.8-2.8,4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6C167.4,403.3,163.6,401.7,159.6,401.7z" />
                            <path class="st0"
                                d="M223.9,401.7c-3.9,0-7.8,1.6-10.6,4.4s-4.4,6.7-4.4,10.6c0,3.9,1.6,7.8,4.4,10.6s6.7,4.4,10.6,4.4c3.9,0,7.8-1.6,10.6-4.4s4.4-6.7,4.4-10.6c0-3.9-1.6-7.8-4.4-10.6S227.8,401.7,223.9,401.7z" />
                            <path class="st0"
                                d="M432.7,385.6h-17.1v-17.1c0-8.3-6.7-15-15-15s-15,6.7-15,15v32.1c0,8.3,6.7,15,15,15h32.1c8.3,0,15-6.7,15-15C447.7,392.3,441,385.6,432.7,385.6z" />
                        </svg>
                        <h3 class="dark-title">Schedule</h3>
                        <P class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis ipsum
                            molestiae
                            quae ratione.</P>
                    </div>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show bg-box p-5 mt-5 rounded" id="pills-add-patient" role="tabpanel"
                    aria-labelledby="pills-add-patient-tab">
                    <!-- Create patient Account-->
                    <div class="row justify-content-between">
                        <div class="col-md-6">
                            <div class="head text-blue">
                                <h2>To Do List</h2>
                                <div class="line bg-yellow"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-md-12">
                            <div class="accordion" id="accordionExample">
                                <?php foreach ($todoResults as $todo) : ?>
                                <div class="accordion-item">
                                    <div class="d-flex align-items-center accordion-button collapsed"
                                        data-bs-toggle="collapse" data-bs-target="#collapse<?= $todo['id'] ?>"
                                        aria-expanded="true" aria-controls="collapseOne">
                                        <div class="col-lg-4">
                                            <div class="row align-items-center">
                                                <div class="col-lg-2 pe-0">
                                                    <img src="<?= URL; ?>assets/images/person(100x100).png" alt=""
                                                        class="img-fluid rounded-circle">
                                                </div>
                                                <div class="col-lg-4">
                                                    <span><?= $todo['name'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <p class="m-0"><?= $todo['title'] ?>.</p>
                                        </div>
                                    </div>
                                    <div id="collapse<?= $todo['id'] ?>" class="accordion-collapse collapse"
                                        aria-labelledby="heading<?= $todo['id'] ?>" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <?= $todo['to_do_details'] ?>
                                        </div>
                                    </div>
                                </div>
                                <?php endforeach ?>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade show bg-box p-5 mt-5 rounded" id="pills-schedule" role="tabpanel"
                    aria-labelledby="pills-schedule-tab">
                    <!-- Schedule -->
                    <div class="row justify-content-between">
                        <div class="col-md-6">
                            <div class="head text-blue">
                                <h2>Schedule</h2>
                                <div class="line bg-yellow"></div>
                            </div>
                        </div>
                    </div>
                    <div class="list row mt-5">
                        <div class="col-md-12">
                            <table class="table tableData table-striped table-hover">
                                <thead class="bg-white">
                                    <tr>
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Time</th>
                                    </tr>
                                </thead>
                                <tbody id="cSchedule">
                                    <?php foreach ($scheduleResults as $schedule) : ?>
                                    <tr>
                                        <td><?= $schedule['name'] ?></td>
                                        <td><?= $schedule['schedule_date'] ?></td>
                                        <td><?= $schedule['schedule_time'] ?></td>
                                    </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<?php
require_once('include/footer.php');
?>