$(document).ready(function(){
	//Photo Preview 
	$('#formReg #photo').change(function(e){
		var ext = $('#photo').val().split('.').pop().toLowerCase();
		if($.inArray(ext, ['bmp','jpg','jpeg']) == -1){
			$("#photopreview").attr("src","./images/photos/wrong.png");
		}else{
			var reader = new FileReader();
			reader.onload = function (e) {
				$("#photopreview").attr("src",e.target.result);
			};
			reader.readAsDataURL(this.files[0]);
		}
	});
});