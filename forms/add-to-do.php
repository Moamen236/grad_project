<?php

use Project\Classes\Models\to_do;

require_once("../app.php");

$schedule = new to_do;

if ($request->postHas('add-to-do')) {
    $title = $request->post('title');
    $description = $request->post('description');

    $specialist_id = $session->get('specialist_id');
    $caregiver_id = $session->get('caregiver_id');
    $patient_id = $session->get('patient_id');

    $res = $schedule->insert(("title , to_do_details , specialist_id , caregiver_id , patient_id"), ("'$title' , '$description' , $specialist_id , $caregiver_id , $patient_id "));

    var_dump($res);
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";

    echo "<pre>";
    print_r($_SESSION);
    echo "</pre>";
}