var helpArray = ["Wpisz imię pls",
    "a tu wpisz nazwisko",
    "zapraszamy do wpisania maila",
     "Kliknij w okienko, żeby wiedzieć o co cho"];
var helpText;

// initialize helpTextDiv and register event handlers
function init() {
    helpText = document.getElementById("helpText");

    // register listeners
    registerListeners(document.getElementById("name"), 0);
    registerListeners(document.getElementById("lastname"), 1);
    registerListeners(document.getElementById("email"), 2);

    var myForm = document.getElementById( "sumbit&clear" );
    myForm.addEventListener( "submit", 
       function()
       {                                                         
          return confirm( "Are you sure you want to submit?" );  
       }, // end anonymous function
       false );
    myForm.addEventListener( "reset", 
       function()
       {                                                         
          return confirm( "Are you sure you want to reset?" );  
       }, // end anonymous function
       false );

} // end function init

// utility function to help register events
function registerListeners(object, messageNumber) {
    object.addEventListener("focus",
        function () { helpText.innerHTML = helpArray[messageNumber]; },
        false);
    object.addEventListener("blur",
        function () { helpText.innerHTML = helpArray[3]; }, false);
} // end function registerListener

window.addEventListener("load", init, false);