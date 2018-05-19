// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


document.addEventListener('DOMContentLoaded', function(){

var myForm = document.querySelector('#new_todo');

myForm.addEventListener('submit', function(e){


    e.preventDefault();
    $.ajax({
        url: myForm.getAttribute('action'),
        method: myForm.getAttribute('method'),
        dataType:'json',
        data: $(myForm).serialize()
    }).done(function(data){

        // clear the text input once the ajax is successful
        var input = document.querySelector('#todo_content');
        input.value = '';

        var myList = document.querySelector("#myList");
        //when response is in HTML format
         // $(myList).append(data);
        //myList.appendChild(data);
        // myList.insertAdjacentHTML('beforeend', data) // javascript way of appending the li

        //1 . when response is in JSON format 
        var li = document.createElement('li');
        li.append(data.data.content);
        $(myList).append(li)
        
        //2 . when response is in JSON format 
        //    var list = document.createElement("li");
        //    list.innerText = data.content;
        //    myList.appendChild(list);

        console.log("Success !!!");
        
    })

    console.log("AJAX request send!!")
})

});