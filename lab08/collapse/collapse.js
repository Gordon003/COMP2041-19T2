(function() {

    var button1 = document.getElementById('item-1');
    var output1 = document.getElementById('item-1-content');
    
    var button2 = document.getElementById('item-2');
    var output2 = document.getElementById('item-2-content');


    button1.onclick = function(){
        output1.style.display = "none";
    };
    
    button2.onclick = function(){
        output2.style.display = "none";
    };

}());
