<?php

use Project\Classes\Models\caregiver;
use Project\Classes\Models\patient;
use Project\Classes\Models\specialist;
use Project\Classes\Models\Users;

require_once('../app.php');

$specialist = new specialist;
$caregiver = new caregiver;
$users = new Users;
$patients = new patient;


if ($request->postHas('reg')) {
    $name = $request->post('name');
    $email = $request->post('email');
    $password = $request->post('password');
    $re_password = $request->post('re-password');
    $choose = $request->post('choose');
    $sp_serial_no  = $request->post('sp_serial_no');
    $patient_name  = $request->post('patient_name');

    if ($password != $re_password) {
        $session->set('reg_errors', 'The two passwords do not match');
        $request->redirect('index.php');
    } else {
        switch ($choose) {
            case 'specialist':
                $select_specialist = $specialist->select("email", "email = '$email'");
                $select_specialist_row = mysqli_fetch_assoc($select_specialist);
                if ($select_specialist_row['email'] === $email) {
                    $session->set('reg_errors', 'Email already exists');
                    $request->redirect('index.php');
                } else {
                    $serial_no = uniqid();
                    // echo gettype($serial_no);
                    // echo "<pre>";
                    // print_r($_POST);
                    // echo "</pre>";
                    $password = password_hash($password, PASSWORD_DEFAULT);
                    $specialist->insert(("serial_no ,name , email , password"), (" '$serial_no ', '$name' , '$email' , '$password'"));
                    $session->set('sucsses_reg', 'You are now logged in');
                    $request->redirect('index.php');
                }
                break;
            case 'user':
                $select_user = $users->select("email", "email = '$email'");
                $select_user_row = mysqli_fetch_assoc($select_user);
                if ($select_user_row['email'] === $email) {
                    $session->set('reg_errors', 'Email already exists');
                    $request->redirect('index.php');
                } else {
                    $password = password_hash($password, PASSWORD_DEFAULT);
                    $users->insert(("name , email , password"), ("'$name' , '$email' , '$password'"));
                    $session->set('sucsses_reg', 'You are now logged in');
                    $request->redirect('index.php');
                }
                break;
            case 'caregiver':
                //Caregiver
                $select_caregiver = $caregiver->select("email", "email = '$email'");
                $select_caregiver_row = mysqli_fetch_assoc($select_caregiver);
                //Specialist
                $select_specialist = $specialist->select("serial_no", "serial_no = '$sp_serial_no'");
                $select_specialist_row = mysqli_fetch_assoc($select_specialist);
                // patients
                $select_patient = $patients->select("name", "name = '$patient_name'");
                $select_patient_row = mysqli_fetch_assoc($select_patient);

                if ($select_caregiver_row['email'] === $email) {
                    $session->set('reg_errors', 'Email already exists');
                    $request->redirect('index.php');
                } elseif ($select_specialist_row['serial_no'] != $sp_serial_no) {
                    $session->set('reg_errors', 'The Serial number is invalid');
                    $request->redirect('index.php');
                } elseif ($select_patient_row['name'] != $patient_name) {
                    $session->set('reg_errors', 'The name not found');
                    $request->redirect('index.php');
                } else {

                    $password = password_hash($password, PASSWORD_DEFAULT);
                    $caregiver->insert(("sp_serial_no , name , email , password"), ("'$sp_serial_no','$name' , '$email' , '$password'"));
                    // $select_caregiver =  $caregiver->select("*", "sp_serial_no = '$sp_serial_no' AND name = '$name' AND email = '$email' AND password = '$password'");
                    // $select_caregiver_row = mysqli_fetch_assoc($select_caregiver);
                    // $caregiver_id = $select_caregiver_row['id'];
                    // $select_patient = $patients->select("*", "name = '$patient_name'");
                    // $select_patient_row = mysqli_fetch_assoc($select_caregiver);
                    // // patients
                    // if ($select_patient_row['name'] === $patient_name) {
                    //     $result = $patients->insert("(caregiver_id )", "($caregiver_id)");
                    //     var_dump($result);
                    // }

                    echo "<pre>";
                    print_r($select_patient_row);
                    echo "</pre>";
                    // $session->set('sucsses_reg', 'You are now logged in');
                    // $request->redirect('index.php');
                }
                break;

            default:
                $request->redirect('index.php');
                break;
        }
    }
} else {
    $request->redirect('index.php');
}