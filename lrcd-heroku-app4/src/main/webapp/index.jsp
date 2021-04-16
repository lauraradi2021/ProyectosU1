<%-- 
    Document   : index
    Created on : Apr 15, 2021, 10:21:14 PM
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Heroku  APP</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="WEB-INF/MisEstilos.css" rel="stylesheet" type="text/css"/>

    </head>
 <body>
        <div><center> <h1>PARCIAL 2: PREGUNTAS Y RESPUESTAS</h1> </center></div>
        <form >
            <div>
            <br><h2>PREGUNTAS</h2></br>
            <div id="id01"></div>
           </div>
         
            <div id="hide-me">
                <br><h2> RESPEUSTAS </h2></br>
                <div id="id02"></div>
            </div>
        </form>





<script>
var xmlhttp = new XMLHttpRequest();
var url = "http://mavf4unisabana.herokuapp.com/parcial2";

xmlhttp.onreadystatechange=function() {
  if (this.readyState == 4 && this.status == 200) {
    myFunction(this.responseText);
  }
  
}
xmlhttp.open("GET", url, true);
xmlhttp.send();

function myFunction(response) {
  var arr = JSON.parse(response);
  var i;
  var out = "<table>";

  for(i = 0; i < arr.length; i++) {
    out += "<tr><td>" + 
    arr[i].id +
    "</td><td>" +
    arr[i].question +
    "</td></tr>";
  }
  
  out += "</table>";
  document.getElementById("id01").innerHTML = out;
   
}

var xmlhttp1 = new XMLHttpRequest();
var url2 ="http://mavf4unisabana.herokuapp.com/parcial2";

xmlhttp1.onreadystatechange=function() {
  if (this.readyState == 4 && this.status == 200) {
    myFunction2(this.responseText);
  }
}
xmlhttp1.open("GET", url2, true);
xmlhttp1.send();
function myFunction2(response2) {
  var arr1 = JSON.parse(response2);
  var i1;
  var out1 = "<table>";

  for(i1 = 0; i1 < arr1.length; i1++) {
    out1 += "<tr><td>" + 
    arr1[i1].id +
    "</td><td>" +
    arr1[i1].question +
    "</td></tr>";
  }
  
  out1 += "</table>";
  document.getElementById("id02").innerHTML = out1;
  
    
}

$('#displayNone').click(function(e) {
  
  // Resetear, por si acaso has estado jugando con la otra propiedad
  $('#hide-me').css('visibility', 'visible');
  
  if( $('#hide-me').is(":visible") ) {
    $('#hide-me').css('display', 'none'); 
  } else {
    $('#hide-me').css('display', 'block');
  }
});

$('#visibilityHidden').click(function(e) {
  
  // Resetear, por si acaso has estado jugando con la otra propiedad
  $('#hide-me').css('display', 'block');
  
  if( $('#hide-me').css('visibility') != 'hidden' ) {
    $('#hide-me').css('visibility', 'hidden');
  } else {
    $('#hide-me').css('visibility', 'visible');
  }
});
</script>

</body>
</html>

