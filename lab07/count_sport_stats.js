function countStats(data) {

    var matchPlayed = 0;
    var goal = 0;

    for (var i = 0; i < data.length; i++){
    
        var dataMatch = data[i]["matches"];
        matchPlayed = +matchPlayed + +dataMatch;
    
        var dataTry = data[i]["tries"];
        goal = +goal + +dataTry;
        
    }

    return {matches: matchPlayed, tries: goal}
}

const json = process.argv[2];
if (json === undefined) {
    throw new Error(`input not supplied`);
}
// include the json file via node's module system,
// this parses the json file into a JS object
// NOTE: this only works via node and will not work in the browser
const stats = require(`./${json}`);

console.log(countStats(stats.results));
