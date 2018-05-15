document.addEventListener('DOMContentLoaded',function(){


// Get the monster Button

var button = document.getElementById('monsters');
var postbutton = document.getElementById('postmonster');
var datatag = document.getElementById('data');


postbutton.addEventListener('click',function(){
	var name = document.getElementById('name').value;
	var home = document.getElementById('home').value;
	var creep = document.getElementById('creep').value;
	$.ajax({
		url: 'https://monsters-api.herokuapp.com/monsters',
		method: 'POST',
		data: {
			monster: {
				name: name,
				home: home,
				creepiness: creep
			}
		}
	}).done(function(){
		console.log('[*] Added your Monster');
	}).fail(function(){
		console.log('[-] Something Went Worng')
	})


})
























button.addEventListener('click',function(){


	console.log('[*] Getting Monsters')

	var url = "https://monsters-api.herokuapp.com/monsters.json"


	var request = $.ajax({
		url: url,
		method: 'GET',
	});


	request.done(function(data){
		var div = document.createElement('div');
		

		for (var i =0; i < data.length; i++) {
			var pTag = document.createElement('p');

			pTag.innerText = data[i].name

			var img = document.createElement('img');
			img.src = 'https://robohash.org/'+ data[i].id +'?set=set2&size=100x100'
			pTag.append(img)

			div.append(pTag)

		}
		datatag.innerHTML = div.innerHTML


		console.log('[*] Ajax Request Complete..Yayyy')
	});

	request.fail(function(request, status, error){
		console.log('[-] '+ status +' ' + error);
	
	});

	request.always(function(){
		console.log('[*] You can\'t stop me')
	})



	console.log('[*] You have your monsters')

})




})
