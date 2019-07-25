(function() {

    'use strict';

    var button1 = document.getElementById('item-1');
    var output1 = document.getElementById('item-1-content');
    
    var button2 = document.getElementById('item-2');
    var output2 = document.getElementById('item-2-content');


    button1.onclick = function(){
        if (output1.style.display === "block") {
          output1.style.display = "none";
        } else {
          output1.style.display = "block";
        }
    };
    
    button2.onclick = function(){
        if (output2.style.display === "block") {
          output2.style.display = "none";
        } else {
          output2.style.display = "block";
        }
    };

}());
