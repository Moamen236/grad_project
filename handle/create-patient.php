<?php

use Project\Classes\Models\patient;

require_once("../app.php");

$patients = new patient;
// $select_patients = $patients->selectAll();
$specialist_id = $session->get('specialist_id');
// $caregiver_id = $session->get('caregiver_id');

if ($request->postHas("create_patient")) {
    $patient_name = $request->post("patient_name");                         // Patient Name
    $patient_date = $request->post("patient_date");                         // Patient Date
    $patient_pic = $request->files('patient_pic');                          // Patient Picture
    $No_of_bro = $request->post("No_of_bro");                               // Number of brothers
    $arr_btw_bro = $request->post("arr_btw_bro");                           // Rank among brothers
    $patient_school = $request->post("patient_school");                     // Patient School
    $patient_gender = $request->post("patient_gender");                     // Patient Gender
    $patient_class = $request->post("patient_class");                       // Patient Class
    $caregiver_name = $request->post("caregiver_name");                     // Caregiver Name
    $caregiver_relationship = $request->post("caregiver_relationship");     // Caregiver Relationship
    $caregiver_number = $request->post("caregiver_number");                 // Caregiver Number

    // transfer date
    $date = date('Y-m-d', strtotime($patient_date));

    // Calc patient age
    $from = new DateTime("$patient_date");
    $to   = new DateTime('today');
    $patient_age =  $from->diff($to)->y;

    // Patient Picture
    $pic_name = $patient_pic['name'];
    $pic_type = $patient_pic['type'];
    $pic_tmp_name = $patient_pic['tmp_name'];
    $pic_error = $patient_pic['error'];
    $pic_size = $patient_pic['size'];
    // Uniq Name
    $random = uniqid();
    $extention = pathinfo($pic_name, PATHINFO_EXTENSION);
    $uniq_pic_name = "$random.$extention";
    move_uploaded_file($pic_tmp_name, PATH . "assets/images/uploads/patients/$uniq_pic_name");

    echo "<pre>";
    print_r($_POST);
    echo "</pre>";
    // Insert in Database
    $res = $patients->insert(("name,age,date_of_birth,school,gender,class,photo,caregiver_name,caregiver_relationship,caregiver_phone,spcialist_id "), ("'$patient_name' , $patient_age , '$patient_date' , '$patient_school' , '$patient_gender' , '$patient_class' , '$uniq_pic_name' ,   '$caregiver_name' , '$caregiver_relationship' ,$caregiver_number , $specialist_id"));
    $request->redirect("specialist.php");
}