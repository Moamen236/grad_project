//  wow.js
new WOW().init();

// rellax.js
var rellax = new Rellax('.rellax');

$(document).ready( function () {
  // Datatables.js
  $('.tableData').DataTable();

  // Slick for swiper
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
  $("#patient-info").css("right" , -info_width)
  $("#toggle-info").click(function(){
    if($("#patient-info").css("right") == -info_width+"px"){
      $("#patient-info").animate({"right" : "40px"},500)
    }else{
      $("#patient-info").animate({"right" : -info_width},500)
    }
  })

  
  // form reload
  function submissionDone(){
    console.log('success message');
  }

  var form = $('#form');

  form.submit(function (e) {
    console.log('done submit');
		e.preventDefault();

		var url = form.attr('action');
    var type = form.attr('method');
    console.log(url);
    console.log(type);

    var form_data = form.serialize(); //new FormData(form)
    console.log(form_data);

		$.ajax({
			type: type,
			url: url,
			data: form_data ,
			success: function () {
				submissionDone();
			},
      cache: false,
      contentType: false,
      processData: false
		})
	});

  // == tab on reload
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

});
