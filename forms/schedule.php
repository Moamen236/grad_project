<?php

use Project\Classes\Models\schedule;

require_once('../app.php');
$schedule = new schedule;

$patient_id = $session->get('patient_id');
$specialist_id = $session->get('specialist_id');
$caregiver_id = $session->get('caregiver_id');

if ($request->postHas('add-schedule')) {

    foreach ($_POST as $key => $record) {
        if (strpos($key, 'datetime_') !== false) {
            $date_no = str_replace('datetime_', '', $key);
            echo $record . "<br>";
            $schedule->insert("schedule_date_time , specialist_id, caregiver_id , patient_id", "'$record'  , $specialist_id , $caregiver_id , $patient_id");
            $request->redirect("patient-profile.php?patientid=$patient_id");
        }
    }
} elseif ($request->getHas('schedule_id')) {
    $schedule_id = $request->get('schedule_id');
    $res = $schedule->delete("id = $schedule_id ");
    var_dump($res);
    $request->redirect("specialist.php");
} else {
    $request->redirect("patient-profile.php?patientid=$patient_id");
}