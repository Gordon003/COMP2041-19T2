(function() {
   'use strict';
   // write your js here.
   
   var x = 0;
   
   setInterval(function() {
        if (x == 0){
            document.getElementById('output').classList.remove("hide");
            x = 1;
        } else {
            document.getElementById('output').classList.add("hide");
            x = 0;
        }
   },2000);
   
}());
