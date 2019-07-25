(function() {
   'use strict';
   
   oneSecondFunction();
    
   setInterval(oneSecondFunction, 1000);
   
    
}());

function oneSecondFunction() {
    var today = new Date();
    var date = today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var dateTime = "<p>" + date + ' ' + time + "</p>";
    
    var d = new Date("August 16, 2019 09:00:00");
    
    const diffTime = Math.abs(d.getTime() - today.getTime());
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    
    var diffMins = Math.round(((diffTime % 86400000) % 3600000) / 60000); // minutes
    var diffHrs = Math.floor((diffTime % 86400000) / 3600000); // hours
    var seconds = Math.round(diffTime / 1000 % 60);
    
    var testTime = "<p> Only " + diffDays + " days, " + diffHrs + " hours, " + diffMins + " minutes and " + seconds + " seconds left to go. Good luck! </p>";
    
    document.getElementById('output').innerHTML = dateTime + "\n" + testTime + "\n";
}
