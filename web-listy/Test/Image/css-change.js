function lenFun() {
	    var x = document.images.length;
	    document.getElementById("len").innerHTML = x;
	}


	function urlFun() {
    var x = document.images;
    var txt = "";
    var i;
    for (i = 0; i < x.length; i++) {
        txt = txt +  x[i].src + "<br>";
    }
    document.getElementById("url").innerHTML = txt;
}



function dotFun() {
    var x = document.images[0];
    x.style.border = "10px dotted black";
}

function urlIdFun() {
    var x = document.images.namedItem("dcouple").src;
    document.getElementById("urlId").innerHTML = x;
}



function urlIndexFun() {
    var x = document.images.item(0).src;
    document.getElementById("urlIndex").innerHTML = x;
}



function urlEachFun() {
    var x = document.images;
    var txt = "";
    var i;
    for (i = 0; i < x.length; i++) {
        txt = txt +  x[i].src + "<br>";
    }
    document.getElementById("urlEach").innerHTML = txt;
}