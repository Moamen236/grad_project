<?php

use Project\Classes\Models\long_term;
use Project\Classes\Models\short_term;
use Project\Classes\Models\weknees_point;
use Project\Classes\Models\strength_point;

require_once('../../app.php');

$long_term = new long_term;
$short_term = new short_term;
$strength_point = new strength_point;
$weknees_point = new weknees_point;


if ($request->postHas('add-long-term')) {
    $topic = $request->post('topic');
    $plan_id = (int)$request->post('plan_id');
    $patient_id = $request->post('patient_id');

    $result = $long_term->insert(("long_term_discription , plan_id "), ("'$topic' , $plan_id"));
    $request->redirect("plan.php?patientid=$patient_id");
} else {
    $request->redirect("plan.php?patientid=$patient_id");
}


if ($request->postHas('add-short-term')) {
    $topic = $request->post('topic');
    $plan_id = (int)$request->post('plan_id');
    $patient_id = $request->post('patient_id');

    $result = $short_term->insert(("short_term_description , plan_id "), ("'$topic' , $plan_id"));
    $request->redirect("plan.php?patientid=$patient_id");
} else {
    $request->redirect("plan.php?patientid=$patient_id");
}


if ($request->postHas('add-strength-point')) {
    $topic = $request->post('topic');
    $plan_id = (int)$request->post('plan_id');
    $patient_id = $request->post('patient_id');

    $result = $strength_point->insert(("strength_point_description , plan_id "), ("'$topic' , $plan_id"));

    if (var_dump($result) == false) {
        $session->set('add_error', 'You have an error in insert data');
    }
    $request->redirect("plan.php?patientid=$patient_id");
} else {
    $request->redirect("plan.php?patientid=$patient_id");
}


if ($request->postHas('add-weaknees-point')) {
    $topic = $request->post('topic');
    $plan_id = (int)$request->post('plan_id');
    $patient_id = $request->post('patient_id');

    $result = $weknees_point->insert(("weeknees_point_description , plan_id "), ("'$topic' , $plan_id"));

    if (var_dump($result) == false) {
        $session->set('add_error', 'You have an error in insert data');
    }
    $request->redirect("plan.php?patientid=$patient_id");
} else {
    $request->redirect("plan.php?patientid=$patient_id");
}