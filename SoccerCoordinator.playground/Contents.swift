/*
 ---------------- Part One -------------------
 ---------------- The Data -------------------
 */

// The players - each is a dictionary

let playerOne: [String: Any] = ["name": "Joe Smith","height": 42, "experience": true, "guardian": "Jim and Jan Smith" ]
let playerTwo: [String: Any] = ["name": "Jill Tanner","height": 36, "experience": true, "guardian": "Clara Tanner" ]
let playerThree: [String: Any] = ["name": "Bill Bon","height": 43, "experience": true, "guardian": "Sara and Jenny Bon" ]
let playerFour: [String: Any] = ["name": "Eva Gordon","height": 45, "experience": false, "guardian": "Wendy and Mike Gordon" ]
let playerFive: [String: Any] = ["name": "Matt Gill","height": 40, "experience": false, "guardian": "Charles and Sylvia Gill" ]
let playerSix: [String: Any] = ["name": "Kimmy Stein","height": 41, "experience": false, "guardian": "Bill and Hillary Stein" ]
let playerSeven: [String: Any] = ["name": "Sammy Adams","height": 45, "experience": false, "guardian": "Jeff Adams" ]
let playerEight: [String: Any] = ["name": "Karl Saygan","height": 42, "experience": true, "guardian": "Heather Bledsoe" ]
let playerNine: [String: Any] = ["name": "Suzanne Greenberg","height": 44, "experience": true, "guardian": "Henrietta Dumas" ]
let playerTen: [String: Any] = ["name": "Sal Dali","height": 41, "experience": false, "guardian": "Gala Dali" ]
let playerEleven: [String: Any] = ["name": "Joe Kavalier","height": 39, "experience": false, "guardian": "Sam and Elaine Kavalier" ]
let playerTwelve: [String: Any] = ["name": "Ben Finkelstein","height": 44, "experience": false, "guardian": "Aaron and Jill Finkelstein" ]
let playerThirteen: [String: Any] = ["name": "Diego Soto","height": 41, "experience": true, "guardian": "Robin and Sarika Soto" ]
let playerFourteen: [String: Any] = ["name": "Chloe Alaska","height": 47, "experience": false, "guardian": "David and Jamie Alaska" ]
let playerFifteen: [String: Any] = ["name": "Arnold Willis","height": 43, "experience": false, "guardian": "Claire Willis" ]
let playerSixteen: [String: Any] = ["name": "Phillip Helm","height": 44, "experience": true, "guardian": "Thomas Helm and Eva Jones" ]
let playerSeventeen: [String: Any] = ["name": "Les Clay","height": 42, "experience": true, "guardian": "Wynonna Brown" ]
let playerEighteen: [String: Any] = ["name": "Herschel Krustofski","height": 45, "experience": true, "guardian": "Hyman and Rachel Krustofski" ]

// The 'players' array containing all player dictionaries

var players = [playerOne, playerTwo, playerThree, playerFour, playerFive, playerSix, playerSeven, playerEight, playerNine, playerTen, playerEleven, playerTwelve, playerThirteen, playerFourteen, playerFifteen, playerSixteen, playerSeventeen, playerEighteen]

print("Player count = \(players.count)")


// The teams - each is an array of dictionaries

var teamSharks = [[String: Any]]()
var teamDragons = [[String: Any]]()
var teamRaptors = [[String: Any]]()

/*
 ---------------- Part Two ----------------------
 ---------------- The Sorting -------------------
 */

// Creating empty containers for players based on *experience*

var hasExperience = [[String: Any]]()
var noExperience = [[String: Any]]()

// Dividing players based on experience

for player in players {
    if (player["experience"] as! Bool) == true {
        print(player["name"])
        hasExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

// adding experienced players to teams


var sortCount = 0

for player in hasExperience {
    sortCount += 1
    var remainder = sortCount % 3
    
    switch remainder {
    case 0:
        teamSharks.append(player)
    case 1:
        teamDragons.append(player)
    case 2:
        teamRaptors.append(player)
    default:
        print("no")
    }
    
}

print(hasExperience)
print("then...")
print(teamSharks)
print(teamDragons)
print(teamRaptors)



// TODO -> players are divided, now sort them into 3 equal teams


// the bottom of the page
