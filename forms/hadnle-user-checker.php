<?php

use Project\Classes\Models\autism_checker;

require_once('../app.php');
$user_id = $session->get('user_id');
$autism_checker = new autism_checker;



if ($request->postHas('user-checker')) {
    $name = $request->post('name');
    $age = $request->post('age');
    $choose = $request->post('choose');

    $result = $autism_checker->insert(("case_name , age , gender , user_id"), (" '$name' , $age , '$choose' , $user_id "));
    var_dump($result);
    print_r($_POST);
}