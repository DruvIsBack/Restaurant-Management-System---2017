$(document).ready(function(e1){
	var validPhoto = false;
	$('.reg #photo_data').change(function(){
    	var ext = $('#photo_data').val().split('.').pop().toLowerCase();
		if($.inArray(ext, ['bmp','jpg','jpeg','png']) == -1){
			validPhoto=false;
		}else{
			validPhoto=true;
		}
    });
    $('.reg').submit(function(e2){
        if(!validPhoto){
        	alert("Select photo isn't proper type");
        	e2.preventDefault();
        }
    });
	//Photo Preview 
	$(".reg #photo_data").change(function(e){
		var ext = $('#photo_data').val().split('.').pop().toLowerCase();
		if($.inArray(ext, ['bmp','jpg','jpeg']) == -1){
			$("#photopreview").attr("src","resources/images/photos/wrong.png");
		}else{
			var reader = new FileReader();
			reader.onload = function (e) {
				$("#photopreview").attr("src",e.target.result);
			};
			reader.readAsDataURL(this.files[0]);
		}
	});
});