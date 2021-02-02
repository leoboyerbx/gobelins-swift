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


// Exercices de fonctions

// Créer une function sans paramètre avec une valeur de retour de tye tableau de Int avec 3 éléments
func myFunc () -> [Int]
{
    return [4, 6, 90]
}

myFunc()

// Créer une function avec 3 paramètres Int float et String, Retourne string contenant les 3 éléments
func concatVars (superInt: Int, superFloat: Float, superString: String) -> String
{
    return "\(superInt) \(superFloat) \(superString)"
}

concatVars(superInt: 56, superFloat: 49.76, superString: "Coucou ;)")

// Créer une fonction avec 3 paramètres dont un par défaut. Si la valeur par défaut est modifiée, afficher "spécifique", sinon afficher "défaut"

func defaultFunc (param1: Int, param2: Int, param3: Float = 43.2)
{
    if param3 == 43.2 {
        print("Default")
    } else {
        print("Spécifique")
    }
}

defaultFunc(param1: 34, param2: 12)
defaultFunc(param1: 34, param2: 12, param3: 45.4)
//: [Next](@next)
