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
        if ($date_no == $time_no) {
            $schedule->insert("schedule_time , schedule_date , specialist_id , caregiver_id , patient_id", "'$time' , '$date' , $specialist_id , $caregiver_id , $patient_id");
        }
    }
} else {
    $request->redirect("patient-profile.php?patientid=$patient_id");
}