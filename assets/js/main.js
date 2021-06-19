//  wow.js
new WOW().init();

// rellax.js
var rellax = new Rellax('.rellax');

$(document).ready( function () {
  // Datatables.js
  $('.tableData').DataTable();

  $('.multiple-items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3
  });

  // jsPDF
  var doc = new jsPDF();
  $('#cmd').click(function() {
      doc.fromHTML($('#testprint').html(), 15, 15, {
          'width': 170,
      }, function() {
          doc.save('sample-file.pdf')
      });
  });

  // patient info in plan 
  let info_width =  $("#patient-info").outerWidth();
  $(".main-box").css("left" , -info_width)
  $("#toggle-info").click(function(){
    if($(".main-box").css("left") == "0px"){
      $(".main-box").animate({"left" : -info_width},1000)
      $("#toggle-info span").css('display' , 'inline');
    }else{
      $(".main-box").animate({"left" : 0},1000)
      $("#toggle-info span").css('display' , 'none');
    }
  })


  

  function submissionDone(){
    console.log('success message');
  }

  var form = $('#form');

  form.submit(function (e) {
    console.log('done submit');
		e.preventDefault();

		var url = form.attr('action');
    console.log(url);

    var form_data = $("form").serialize(); //new FormData();
    console.log(form_data);

		$.ajax({
			type: 'POST',
			url: url,
			data: form_data ,
			success: function () {
				submissionDone();
			},
      cache: false,
      contentType: false,
      processData: false
		})
	})
  // console.log(text(form.serialize()))

});

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