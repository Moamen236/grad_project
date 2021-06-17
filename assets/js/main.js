//  wow.js
new WOW().init();

// rellax.js
var rellax = new Rellax('.rellax');

// Datatables.js
$(document).ready( function () {
  $('.tableData').DataTable();

  $('.multiple-items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3
  });

});


// switch (choose) {
//   case 'user':
//     window.location.href = "http://localhost/graduation_project/user.php"
//     break;
//   case 'specialist':
//     window.location.href = "http://localhost/graduation_project/user.php"
//     break;
//   case 'caregiver':
//     window.location.href = "http://localhost/graduation_project/user.php"
//     break;
//   default:
//     window.location.href = "http://localhost/graduation_project/"
//     break;
// }

// $(function() {

//   $('#myTab a').click(function(e) {
//       e.preventDefault();
//       $(this).tab('show');
//   });

//   $("ul.nav-tabs > li > a").on("shown.bs.tab", function(e) {
//       var id = $(e.target).attr("href").substr(1);
//       window.location.hash = id;
//   });

//   var hash = window.location.hash;
//   $('#myTab a[hreft="' + hash + '"]').tab('show');
// });