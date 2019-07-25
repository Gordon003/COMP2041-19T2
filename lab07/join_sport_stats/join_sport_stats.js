function makeTeamList(teamData, namesData, teamsData) {
    // Take it step by step.
    
    var qwe = teamData.players.sort(function(a, b){
        return b.matches - a.matches;
    });
    
    var teamCoach = teamData["team"]["coach"];
    var teamID = teamData["team"]["id"];
    var teamName = "";
    for (var i = 0; i < teamsData.length; i++){
        if (teamsData[i]["id"] == teamID){
            teamName = teamsData[i]["team"]
        }
    }
    
    fin = [];
    fin.push(teamName + ", coached by " + teamCoach);
    
    var teamPlayer = "";
    
    for (i in qwe){
    
        playID = qwe[i].id;
        
        var k = +i + 1;
        
        for (j in namesData){
            if (playID == namesData[j].id){
                fin.push(k + ". " + namesData[j].name);
            }
        }

    }
    
    return fin;
}

const teamJson = process.argv[2];
const namesJson = process.argv[3];
const teamsJson = process.argv[4];
if (teamJson === undefined || namesJson === undefined || teamsJson === undefined) {
  throw new Error(`input not supplied`);
}

// some sample data
const team  = require(`./${teamJson}`);
const names  = require(`./${namesJson}`);
const teams  = require(`./${teamsJson}`);
console.log(makeTeamList(team, names.names, teams.teams));
