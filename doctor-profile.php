<?php
require_once('include/header.php');
require_once('include/navbar.php');
?>

<div class="user-profile">
    <div class="container pt-100">

        <div class="row justify-content-center">
            <div class="col-lg-3">
                <img src="<?= URL; ?>assets/images/child-profile.jpg" alt="" class=" img-fluid  ">

            </div>
            <div class="col-lg-3">

                <h3 class="user-photo">
                    olivia john
                </h3>
                <p class="user-info  pt-2"> personal info </p>
                <div class="row">
                    <div class="col-lg-3">
                        <p class="info">
                            Email
                        </p>
                        <p class="info">
                            phone
                        </p>
                        <p class="info">
                            Age
                        </p>
                        <p class="info">
                            Gander
                        </p>
                    </div>
                    <div class="col-lg-6">
                        <p class="info">
                            johniahmed23@gmail.com
                        </p>
                        <p class="info">
                            50153845
                        </p>
                        <p class="info">
                            43
                        </p>
                        <p class="info">
                            female
                        </p>
                    </div>
                </div>
            </div>

        </div>


    </div>
</div>
</div>
<?php require_once('include/footer.php'); ?>