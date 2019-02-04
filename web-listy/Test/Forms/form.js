function numFormsFun() {
    var x = document.forms.length;
    document.getElementById("no").innerHTML = x;
}


// function idFun() {
//     var x = document.forms[0].id;
//     document.getElementById("id").innerHTML = x;
// }


//or
//2 version
function idFun() {
    var x = document.forms.item(0).id;
    document.getElementById("id").innerHTML = x;
}


function byIdFun() {
    var x = document.forms.namedItem("myCarForm").innerHTML;
    document.getElementById("byId").innerHTML = x;
}




function nameFormFun() {
    var x = document.forms;
    var txt = "";
    var i;
    for (i = 0; i < x.length; i++) {
        txt = txt +  x[i].id + "<br>";
    }
    document.getElementById("name").innerHTML = txt;
}



function valueFun() {
    var x = document.forms[0];
    var txt = "";
    var i;
    for (i = 0; i < x.length; i++) {
        txt = txt + x.elements[i].value + "<br>";
    }
    document.getElementById("val").innerHTML = txt;
}