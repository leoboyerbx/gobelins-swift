//: [Previous](@previous)
//:
//: Les fonctions
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les fonctions sont des types de closures
//:
//: ---
//:

//: ![Fonctions?](Swift-04.png)
// A compléter très largement en cours
//: Structure: nomDeLaFonction(nomDuParamètre:Type) -> valeurDeRetour
func sayHello(personName: String) -> String
{
    return "Hello, \(personName)"
}

//: Appel:
sayHello(personName: "Toto titi")

//: sans paramètre
func sayHelloWorld() -> String
{
    return "Hello, world"
}

//: sans valeur de retour
func sayGoodbyeToMyLittleFriend(name: String)
{
    "Goodbye, \(name)"
}

//: Retourne un `Tuple`
func getApplicationInfo() -> (name: String, version: String)
{
    return ("Super App", "v1.0")
}
var appInfo = getApplicationInfo()
appInfo.name
appInfo.version

//: Plusieurs param avec un paramètre par défaut
func addMul(firstAdder: Int, secondAdder: Int, multiplier: Int = 1) -> Int
{
    return (firstAdder + secondAdder) * multiplier
}

//: Appel plusieurs param
addMul(firstAdder: 1, secondAdder: 2)


//: [Next](@next)
