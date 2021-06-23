<?php

// $conn = mysqli_connect('localhost', 'root', '', 'autism_test');

// $query = 'select p.name,p.age
// from patient AS p , specialist AS s
// where s.id = 8 and p.spcialist_id = s.id';

// $run_query = mysqli_query($conn, $query);
// $result = mysqli_fetch_assoc($run_query);

// echo "<pre>";
// print_r($result);
// echo "</pre>";


// require_once('classes/Request.php');
// require_once('classes/Session.php');
// require_once('classes/Db.php');
// require_once('classes/Validation/ValudationRule.php');
// require_once('classes/Validation/Required.php');
// require_once('classes/Validation/Numeric.php');
// require_once('classes/Validation/Email.php');
// require_once('classes/Validation/Str.php');
// require_once('classes/Validation/Validator.php');
// require_once('classes/Users.php');
// require_once('classes/module/adir.php');
// $users = new Users;
// $result = $users->insert("name , email , password", "'Moamen Ali' , 'moamen@gmail.com' , '12345'");
// echo "<pre>";
// var_dump($result);
// echo "</pre>";

// $adir = new adir;
// $result = $adir->selectAll();

// echo "<pre>";
// print_r($result);
// echo "</pre>";

// $v = new Validator;
// $v->validate('age', 'aaaa', ['required', 'numeric']);
// echo "<pre>";
// print_r($v->getErrors());
// echo "</pre>";


use Project\Classes\Request;

require_once('app.php');

// $lovaas = new lovaas_question;
// $result =  $lovaas->selectAll();
// echo "<pre>";
// print_r($result);
// echo "</pre>";

// $users = new status;
// $result = $users->delete('id = 8');

// echo "<pre>";
// var_dump($result);
// echo "</pre>";


// $session = new Session;

// $session->get($errors);

// $request = new Request;
// $result = $request->get("id");
// echo $result;

use Project\Classes\Models\adir;
use Project\Classes\Models\long_term;
use Project\Classes\Models\plan;
use Project\Classes\Models\Users;
use Project\Classes\Models\tables;
use Project\Classes\Models\patient;
use Project\Classes\Models\schedule;
use Project\Classes\Models\specialist;
use Project\Classes\Models\weknees_point;
use Project\Classes\Validation\Validator;
use Project\Classes\Models\lovaas_results;
use Project\Classes\Models\strength_point;
use Project\Classes\Models\lovaas_category;
use Project\Classes\Models\lovaas_questions;
use Project\Classes\Models\to_do;

// $db = new adir;
// $result = $db->selectAll();
// echo "<pre>";
// print_r($result);
// echo "</pre>";


// $validation = new Validator;
// $validation->validate('name', 10, ['required', 'str']);
// echo "<pre>";
// print_r($validation->getErrors());
// echo "</pre>";


// echo "<pre>";
// print_r($_SESSION['errors']);
// echo "</pre>";


// $user = new Users;
// $run_query = $user->select("*", "email = '$email'");
// echo $run_query;
// $user_id[] = $session->get('user_id');
// echo "<pre>";
// print_r($user_id);
// echo "</pre>";

// echo $_SESSION['user_id'];
// $adir = new adir;
// $result = $adir->selectAll();
// echo "<pre>";
// print_r($result);
// echo "</pre>";

// $lovaas_question = new lovaas_questions;
// $result = $lovaas_question->selectAll();
// echo "<pre>";
// print_r($result);
// echo "</pre>";

// $lovaas_category = new lovaas_category;
// $lovaas_cats = $lovaas_category->selectAll();
// echo "<pre>";
// print_r($lovaas_cats);
// echo "</pre>";

// foreach ($lovaas_cats as $value) {
//     echo $value['id'] . "<br>";
//     echo $value['category'];
// }

// echo "<hr>";

// $lovaas_questions = new lovaas_questions;
// $lovaas_ques = $lovaas_questions->selectAll();
// echo "<pre>";
// print_r($lovaas_ques);
// echo "</pre>";




// $select_cat_id = $lovaas_category->selectId("*", 1);
// echo $select_cat_id['id'];
// echo "<br>";
// $select_que_id = $lovaas_questions->selectId("*", 1);
// echo $select_que_id['lovaas_category_id'];;
// echo "<pre>";
// print_r($results);
// echo "</pre>";


// $users = new Users;
// $selectUsers = $users->select("email", "email = 'admin@gmail.com'");
// $selectUserResult = mysqli_fetch_assoc($selectUsers);
// var_dump($selectUserResult);

// echo $selectUserResult['email'];


// print_r($_SESSION);
// $specialist = new specialist;
// $specialist_id = $session->get('specialist_id');
// $selectSpecialist = $specialist->selectId("*", $specialist_id);

// $patiants = new patient;
// $patiantsResults = $patiants->selectWhere("name , age , caregiver_phone", "spcialist_id = $specialist_id");

// print_r($patiantsResults);

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

// $specialist = new specialist;
// $specialist_id = $session->get('specialist_id');
// $select_specialist = $specialist->selectId("*", $specialist_id);

// $patiants = new patient;
// $patiants_results = $patiants->selectWhere("*", "spcialist_id = $specialist_id");

// $full_result = [];

// $tablesSelect = new tables;
// $results =  $tablesSelect->selectAs("schedule.*, patient.name", "schedule left JOIN patient on schedule.patient_id = patient.id",  "schedule.specialist_id = 11");
// $full_result[] = $results;

// $schedule = new schedule;
// $schedule_results = $schedule->selectWhere("schedule.*, patient.name ", "specialist_id = $specialist_id");
// $full_result[] = $schedule_results;

// SELECT schedule.*, patient.name from schedule left JOIN patient on schedule.patient_id = patient.id WHERE schedule.specialist_id = 11

// echo "<pre>";
// print_r($results);
// echo "</pre>";

// foreach ($results as $key => $result) {
//     if ($result['P.id'] === 101) {
//         foreach ($schedule_results as $schedule_result) {
//             array_push($result, array($key => $schedule_result));
//         }
//     }
// }
// echo "<pre>";
// print_r($results);
// echo "</pre>";

// echo "<hr>";

// $patient_id = $request->get('patientid');

// $plan = new plan;
// $select_plan = $plan->select("id", "pateint_id  = $patient_id");
// $show_paln_id = mysqli_fetch_assoc($select_plan);
// $plan_id = $show_paln_id['id'];

// $strength_point = new strength_point;
// $select_strength_point = $strength_point->selectWhere("*", "plan_id = $plan_id");
// echo "<pre>";
// print_r($select_strength_point);
// echo "</pre>";
// $weknees_point = new weknees_point;
// $select_weknees_point = $weknees_point->selectWhere("*", "plan_id = $plan_id");
// echo "<pre>";
// print_r($select_weknees_point);
// echo "</pre>";


// $specialist = new specialist;
// $select_specialist = $specialist->select("*", "serial_no = '60'");
// $select_specialist_row = mysqli_fetch_assoc($select_specialist);

// echo "<pre>";
// print_r($select_specialist_row);
// echo "</pre>";


// $patients = new patient;
// $select_patient =  $caregiver->select("*", "sp_serial_no = '$sp_serial_no' AND name = '$name' AND email = '$email' AND password = '$password'");
// $select_patient_row = mysqli_fetch_assoc($select_patient);
// echo "<pre>";
// print_r($select_patient_row);
// echo "</pre>";


// echo $select_patient_row['name'];


// $lovaas_results = new lovaas_results;
// $lovaas_results_arr = $lovaas_results->selectWhere("*", "patient_id = 104");
// echo "<pre>";
// print_r($lovaas_results_arr);
// echo "</pre>";

// $tables_select = new tables;
// $query = "SELECT lovaas_questions.lovass_questions , lovaas_results.lovaas_question_result FROM lovaas_questions , lovaas_results WHERE lovaas_results.patient_id = 101 AND lovaas_questions.lovaas_category_id = 1";
// $lovaas_results =  $tables_select->query($query);
// $lovaas_results_report = mysqli_fetch_all($lovaas_results, MYSQLI_ASSOC);
// echo "<pre>";
// print_r($lovaas_results_report);
// echo "</pre>";


// $lovaas_results = new lovaas_results;
// $lovaas_results_arr = $lovaas_results->selectWhere("*", "patient_id = 101");

// echo "<pre>";
// print_r($lovaas_results_arr);
// echo "</pre>";

// if (!empty($lovaas_results_arr)) {
//     echo 'not empty';
// } else {
//     echo 'empty';
// }

// Another way to debug/test is to view all cookies
// echo "<pre>";
// print_r($_COOKIE);
// echo "</pre>";



// $now = new DateTime();
// $now_date = $now->format("Y-m-d");

// $schedule = new schedule;
// $query = "SELECT * FROM `schedule` WHERE schedule_date >= '$now_date' AND patient_id = 105 LIMIT 1";
// $run_query = $schedule->query($query);
// $next_schedule = mysqli_fetch_assoc($run_query);


// if ($next_schedule !== null) {
//     echo "<pre>";
//     print_r($next_schedule);
//     echo "</pre>";
// } else {
//     echo "no";
// }

// $schedule = new schedule;
// $query = "SELECT schedule.id , schedule.schedule_time , schedule.schedule_date , patient.id AS p_id , patient.name FROM `schedule` join patient on schedule.patient_id = patient.id where schedule.specialist_id = 11";
// $run_query =  $schedule->query($query);
// $res = mysqli_fetch_all($run_query, MYSQLI_ASSOC);

// echo "<pre>";
// print_r($res);
// echo "</pre>";

// foreach ($res as $value) {
//     echo $value['3'];
//     echo "<br>";
//     echo $value['4'];
// }
// $schedule = new schedule;
// $today = date("Y-m-d");

// $notif_schedule = $schedule->selectWhere("*", "schedule_date = '$today'");

// foreach ($notif_schedule as $notif) {
//     $patient_id = $notif['patient_id'];
//     $notif_patients = $patients->selectWhere("*", "id = $patient_id");
//     foreach ($notif_patients as $patient) {
//         if ($notif['patient_id'] == $patient['id']) {
//             echo $notif['schedule_time'];
//             echo "<br>";
//         }
//         echo $patient['name'];
//         echo "<br>";
//     }
// }

// echo "<pre>";
// print_r($notif_schedule);
// echo "</pre>";
// echo count($notif_schedule);


// $patients = new patient;
// $to_do = new to_do;

// $res = $to_do->selectAll();

// unset($_SESSION['to_do']);

// if ($session->has('to_do')) {
//     $to_do_arr = $session->get('to_do');
//     foreach ($to_do_arr as $value) {
//         echo $value['title'] . "<br>";
//     }
//     echo count($to_do_arr);
// } else {
//     echo "no";
// }


// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";

// unset($_SESSION['to_do']);
// $schedule = new schedule;
// $query = "SELECT schedule.id , schedule.schedule_date_time , patient.id AS p_id , patient.name FROM `schedule` join patient on schedule.patient_id = patient.id where schedule.specialist_id = 11";
// $run_query =  $schedule->query($query);
// $results_schedule = mysqli_fetch_all($run_query, MYSQLI_ASSOC);

echo "<pre>";
print_r($_SESSION);
echo "</pre>";

// $schedule = new schedule;
// $specialist_id = $session->get('specialist_id');
// // $today = new DateTime('now');
// $notif_schedule = $schedule->selectAll();

// foreach ($notif_schedule as $key => $value) {
//     $date_time_arr = [
//         'schedule_date' => date('d/m/Y', strtotime($value['schedule_date_time'])),
//         'schedule_time' => date('h:i a', strtotime($value['schedule_date_time'])),
//     ];
// }

// echo "<pre>";
// print_r($notif_schedule);
// echo "</pre>";