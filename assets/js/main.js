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

  $("#imgload").change(function () {
    console.log("change");
    if (this.files && this.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#imgshow').attr('src', e.target.result);
        }
        reader.readAsDataURL(this.files[0]);
    }
  });

  new ClipboardJS('.btn-copy');

  // edit questions
  $('#lovaas-questions').css('display' , 'none')
  $('.edit-btn').click(function() {
    let parent = $(this).parent();
    let siblings = $(this).parent().siblings();

    $(parent).css('display' , 'none');
    $(siblings).css('display' , 'block');

    console.log(parent);
    console.log(siblings);
  })

  // form with ajax
  // function submissionDone(data){
  //   console.log('success message');
  // }

  // var form = $('#form');

  // form.submit(function (e) {
  //   console.log('done submit');
	// 	e.preventDefault();

	// 	var url = form.attr('action');
  //   var type = form.attr('method');

  //   var form_data = {
  //     title : $('#title').val(),
  //     description : $('#description').val()
  //   };
  //   console.log(form_data);

	// 	$.ajax({
	// 		type: type,
	// 		url: url,
	// 		data: form_data,
	// 		success: function () {
	// 			submissionDone();
	// 		},
  //     cache: false,
  //     contentType: false,
  //     processData: false
	// 	})
	// });
});

