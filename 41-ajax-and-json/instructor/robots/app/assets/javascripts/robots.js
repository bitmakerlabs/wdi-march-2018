// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

//Step 1:
var roboCont = document.getElementById('robot-container');
var roboDetails = document.getElementById('robot-details');
//Step2:
roboCont.addEventListener('click',function(event){

	parent = event.target.parentNode
	

	if (parent.href){
		event.preventDefault();

		var url = parent.href;
		
		$.ajax({
			url: url,
			method: 'GET',
			dataType: 'json'
		}).done(function(data){
			roboDetails.innerHTML = "";

			// var imgTag = document.createElement('img');
			// imgTag.src = "http://robohash.org/" + data.address

			// var pTag = document.createElement('p');

			// pTag.innerText = "Name: "+ data.name

			// roboDetails.append(imgTag);
			// roboDetails.append(pTag);

			//roboDetails.innerHTML = `<img src=http://robohash.org/`+data.address+`><p>Name: `+data.name+`<br/>Id: `+ data.id
		
			var source   = document.getElementById("entry-template").innerHTML;
			var template = Handlebars.compile(source);

			roboDetails.innerHTML = template(data);

		})

	}
})


});
