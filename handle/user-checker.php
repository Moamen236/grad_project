<?php

use Project\Classes\Models\autism_checker;
use Project\Classes\Models\autism_checker_results;

require_once('../app.php');
$user_id = $session->get('user_id');
$autism_checker = new autism_checker;
$autism_checker_results = new autism_checker_results;

if ($request->postHas('user-checker')) {
    $name = $request->post('name');
    $age = $request->post('age');
    $choose = $request->post('choose');

    foreach ($_POST as $key => $record) {
        if (strpos($key, 'question_') !== false) {
            $question_id = str_replace('question_', '', $key);
            $autism_checker_results->insert(("checker_question_result , checker_question_id "), ("'$record' , $question_id"));
        }
    }

    $autism_checker->insert(("case_name , age , gender , user_id"), (" '$name' , $age , '$choose' , $user_id "));
    $request->redirect('user.php');
}