<html>

<head>
    <title>My Now Amazing Webpage</title>
    <link rel="stylesheet" type="text/css" href="slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick/slick-theme.css" />
</head>

<body style="background-color: #0c0;">

    <div class="multiple-items">
        <div>your content</div>
        <div>your content</div>
        <div>your content</div>
        <div>your content</div>
        <div>your content</div>
        <div>your content</div>
        <div>your content</div>
    </div>

    <script type="text/javascript" src="<?= URL; ?>assets/js/jquery.js"></script>
    <script type="text/javascript" src="slick/slick/slick.min.js"></script>

    <script type="text/javascript">
    $(document).ready(function() {
        $('.multiple-items').slick({
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 3
        });
    });
    </script>

</body>

</html>