//: [Previous](@previous)
//:
//: Dico
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les Dico sont des listes d'éléments associés à des clefs
//:
//: * Les éléments d'un Dico doivent être clairement typés
//:
//: * Tout les éléments sont de même type
//:
//: * Un Dico déclaré avec let est dit `immutable`, alors que déclarer en var il est dit `mutable`
//: ---
//:
// A compléter très largement en cours
//: Création d'un dico de String
//: Principe: clef : valeur , clef : valeur
var airports: [String : String] = ["TYO": "Tokyo", "DUB": "Dublin", "APL": "Apple Intl"]

//: Identique mais moins utilisé
var players: Dictionary<String, String> = ["Who" : "First", "What" : "Second"]

//: dico constant utilisant l'inférence
let inferredDictionary = ["TYO": "Tokyo", "DUB": "Dublin"]


//: Acceder et modifier un dico
airports["TYO"]

//: Si la clef n'existe pas : les optionals seront vu plus tard
var notFound = airports["FOO"]


airports.count

//: la clef n'existe pas
airports["LHR"] = "London"

//: trop long, à éviter
var previousValue = airports.updateValue("Dublin International", forKey: "DUB")

//: entrée supprimée
//airports["APL"] = nil

//: plus parlant que le nil :  à privilégier
var removedValue = airports.removeValue(forKey: "APL")

//: ---
//: #### Enumeration
//:
//: ---

//: Itération
for (airportCode, airportName) in airports
{
    airportCode
    airportName
}

//: Seulement les clefs
for airportCode in airports.keys
{
    airportCode
}

//: Seulement les valeurs
for airportName in airports.values
{
    airportName
}


var airportCodes = Array(airports.keys)
var airportNames = Array(airports.values)

//: Création d'un dictionaire vide
var namesOfIntegers = Dictionary<Int, String>()

namesOfIntegers[16] = "Sixteen"

//: vider un dico (version courte)
namesOfIntegers = [:]

//: immutable
let immutableDict = ["a": "one", "b": "two"]


// immutableDict["a"] = "b"
// immutableDict["c"] = "three"

var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
var copiedAges = ages

copiedAges["Peter"] = 24

ages["Peter"]

//: Même constat que pour les tableaux.

//: [Next](@next)
