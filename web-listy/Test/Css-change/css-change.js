function start()
 {
	//  var inputColor = prompt( "Enter a color name for the " + "background of this page", "" );

	// document.body.setAttribute( "style", "background-color: " + inputColor );

document.getElementById("changeBackground").addEventListener(
        "click", function changingBakcground() {
            var inputColor = prompt("Enter a color name for the " +
                "background of this page", "");
            document.body.setAttribute("style",
                "background-color: " + inputColor);
        }, false);


	document.getElementById("changeTextColor").addEventListener(
        "click", function changingTextColor() {
            var inputColor = prompt("Enter a color name for the " +
                "text of this page", "");
            document.body.setAttribute("style",
                "color: " + inputColor);
        }, false);


	document.getElementById("changeFont").addEventListener(
        "click", function changingFont() {
            var inputColor = prompt("Enter a font type for the " +
                "text of this page", "");
            document.body.setAttribute("style",
                "font-family: " + inputColor);
        }, false);
	// document.getElementById( "backgroundChange" ).addEventListener(
	//  "click", backgroundChanging, false );
 // 	var inputTextColor = prompt( "Enter a color name for the " + "text of this page", "" );

	// document.body.setAttribute( "style", "text-color: " + inputTextColor );

} // end function start


//  function backgroundChanging()
// {
// 	var input = document.getElementById("backgroundChange").value;
// 	document.body.setAttribute( "style", "background-color: " + input );
// }


function fontColorChange(){

	var inputColorFont = document.getElementById("fontC").value;
	document.getElementById("wstep").style.color = inputColorFont;

}


function fontChange(){

	// var inputFont = document.getElementById("selectFont").value;
	// document.getElementById("wstep").setAttribute("style", "font-family: \" "  + inputFont + "\"");


	var e = document.getElementById("selectFont");
	var strUser = e.options[e.selectedIndex].text;
	document.getElementById("wstep").setAttribute("style", "font-family: \""  + strUser + "\"");
}

 window.addEventListener( "load", start, false );