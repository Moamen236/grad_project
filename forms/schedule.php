<?php

use Project\Classes\Models\schedule;

require_once('../app.php');
$schedule = new schedule;

$patient_id = $session->get('patient_id');
$specialist_id = $session->get('specialist_id');
$caregiver_id = $session->get('caregiver_id');

if ($request->postHas('add-schedule')) {

    foreach ($_POST as $key => $record) {
        if (strpos($key, 'date_') !== false) {
            $date_no = str_replace('date_', '', $key);
            $date = $record;
        }
        if (strpos($key, 'time_') !== false) {
            $time_no = str_replace('time_', '', $key);
            $time = $record;
        }
        // $res =  $schedule->insert("schedule_date , specialist_id , caregiver_id , patient_id", " '$date' , $specialist_id , $caregiver_id , $patient_id");
        // echo "$time_no $key $record<br>";
        // var_dump($res);
    }
} elseif ($request->getHas('schedule_id')) {
    $schedule_id = $request->get('schedule_id');
    $res = $schedule->delete("id = $schedule_id ");
    var_dump($res);
    $request->redirect("specialist.php");
} else {
    $request->redirect("patient-profile.php?patientid=$patient_id");
}

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";