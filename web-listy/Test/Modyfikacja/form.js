
// var all = document.getElementByTagName("*");

// var ul = document.createElement('ul');

// document.getElementById('ulist').appendChild(ul);


// for (var i = 0; max = all.length; i < max; i++)
// {
//     var li = document.createElement('li');


//     //pobrac dzieci body i przeleciec kazde dziecko czy maja dzieci itd rekurencja funkcja, albo stos

// }


//  window.addEventListener( "load", start, false );


// var all = document.getElementByTagName("*");

// var ul = document.createElement('ul');

// document.getElementById('ulist').appendChild(ul);

// var li = document.createElement('li');

// ul.appendChild(li);

// for (let node of document.body.childNodes) {
//     li.appendChild(node); // shows all nodes from the collection
// }


// var alldescendants = [];

// var t = document.body.childNodes;
//     for(i = 0; i < t.length; i++)
//         if (t[i].nodeType == 1)
//             recurseAndAdd(t[i], alldescendants);

// function recurseAndAdd(el, descendants) {
//   descendants.push(el.id);
//   var children = el.childNodes;
//   for(i=0; i < children.length; i++) {
//      if (children[i].nodeType == 1) {
//          recurseAndAdd(children[i]);
//      }
//   }
// }

function findChildren() {
        var Children  = document.body.children;
 
        for (i = 0; i <= Children.length - 1; i++) {
            document.body.append('\n' + Children[i].innerHTML);
        }
    }