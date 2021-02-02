//: [Previous](@previous)
//:
//: String
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les Strings contiennent un tableau de characters
//:
//: * Une String déclaré avec let est dit `immutable`, alors que déclarer en var il est dit `mutable`
//: ---
//:
// A compléter très largement en cours


var str: String = "Ma chaine en swift"

"\0"         // Null character
"\\"         // Backslash
"\t"         // Tab
"\n"         // Newline
"\r"         // Carriage return
"\""         // Double quote
"\'"         // Single quote

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty
{
    "Yep, it's empty"
}

func somefunc(a: String)
{
    var b = a
    b = "Changed!"
}

var originalString = "Original"
somefunc(a: originalString)
originalString // not modified

for character in originalString.characters
{
    character
}

var notAString: Character = "t"


originalString.characters.count

var helloworld = "hello, " + "world"

//: ---
//: ### String interpolation
//: ---
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//: ---
//: ### String comparaison
//: ---
var str1 = "toto tutu"
var str2 = "toto titi"
str1 == str2


str1.hasPrefix("toto")
str2.hasSuffix("titi")
str1.hasPrefix("toto")


//: [Next](@next)
