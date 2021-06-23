<?php

use Project\Classes\Models\notify_to_do;
use Project\Classes\Models\to_do;

require_once("../app.php");

$to_do = new to_do;
$notify_to_do = new notify_to_do;
$patient_id = $session->get('patient_id');


echo "done";
if ($request->postHas('add-to-do')) {
    $title = $request->post('title');
    $description = $request->post('description');
    $specialist_id = $session->get('specialist_id');
    $caregiver_id = $session->get('caregiver_id');

    $to_do->insert(("title , to_do_details , specialist_id , caregiver_id , patient_id"), ("'$title' , '$description' , $specialist_id , $caregiver_id , $patient_id "));
    $notify_to_do->insert(("to_do_title , to_do_desc , specialist_id , caregiver_id , patient_id"), ("'$title' , '$description' , $specialist_id , $caregiver_id , $patient_id "));

    // $to_do_arr = [
    //     'title' => $title,
    //     'description' => $description,
    //     'patient_id' => $patient_id,
    //     'specialist_id' => $specialist_id,
    //     'caregiver_id' => $caregiver_id
    // ];
    // $_SESSION['to_do'][] = $to_do_arr;

    // $request->redirect("patient-profile.php?patientid=$patient_id");
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
} elseif ($request->getHas('notify_id')) {
    $notify_id = $request->get('notify_id');
    $res = $notify_to_do->delete("id = $notify_id");
    $request->redirect("caregiver.php");
} elseif ($request->getHas('to_do_id') and $request->getHas('caregiver_id')) {
    $to_do_id = $request->get('to_do_id');
    $caregiver_id = $request->get('caregiver_id');

    $res = $to_do->update("done = 'done'", "id = $to_do_id AND caregiver_id =$caregiver_id ");
    $request->redirect("caregiver.php");
} elseif ($request->postHas('edit_to_do')) {
    $to_do_id = $request->post('to_do_id');
    $title = $request->post('title');
    $desc = $request->post('desc');

    $to_do->update("title = '$title ', to_do_details ='$desc' ", "id = $to_do_id");
    $request->redirect("patient-profile.php?patientid=$patient_id");
} elseif ($request->getHas('to_do_id')) {
    $to_do_id = $request->get('to_do_id');

    $to_do->delete("id = $to_do_id");
    $request->redirect("patient-profile.php?patientid=$patient_id");
}