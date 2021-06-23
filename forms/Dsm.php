<?php

use Project\Classes\Models\dsm5_category;
use Project\Classes\Models\dsm_result;
use Project\Classes\Models\dsm5_question;

$dsm5_question = new dsm5_question;
$dsm_ques = $dsm5_question->selectAll();
$dsm5_category = new dsm5_category;
$dsm_cats = $dsm5_category->selectAll();



