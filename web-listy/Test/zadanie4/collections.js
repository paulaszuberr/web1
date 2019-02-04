
function createDrawingSpace () {
    var side = 100;
    var tbody = document.getElementById( "tabBody" );

    for (var i=0; i<side; i++) {
        var row = document.createElement( "tr" );

        for (var j=0; j<side; j++) {
            var cell = document.createElement( "td" );
            row.appendChild( cell )
        }
        tbody.appendChild( row );
    }
    document.getElementById( "drawing" ).addEventListener( "mousemove", processDrawing, false );
    document.getElementById( "drawing" ).addEventListener( "mouseout", processMouseOut, false );
    document.getElementById( "drawing" ).addEventListener( "mousedown", processClick, false );

}

function processDrawing ( e ) {
    if ( e.target.tagName.toLowerCase() == "td" ) {
        if ( e.ctrlKey ) {
            e.target.setAttribute( "class", "green" );
        }
        if ( e.shiftKey ) {
            e.target.setAttribute( "class", "blue" );
        }
        if ( e.altKey ) {
            e.target.setAttribute( "class", "orange" );
        }
    }
    document.getElementById( "coordX" ).innerText = e.clientX;
    document.getElementById( "coordY" ).innerText = e.clientY;

}

function processMouseOut ( e ) {
    document.getElementById("tabBody").style.border = "5px orange";
}

function processClick ( e ) {
    if ( e.target.tagName.toLowerCase() == "td" ) {
        e.target.setAttribute( "class", "red" );
    }
}


window.addEventListener( "load", createDrawingSpace, false );
window.addEventListener( "load", processImages, false );
window.addEventListener( "load", processLinks, false );
window.addEventListener( "load", processForms, false );
window.addEventListener( "load", processAnchors, false);

