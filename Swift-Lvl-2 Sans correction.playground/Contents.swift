/*:
 ---
# Swift-Basics
 ---
*/
//: ![Swift Logo?](Logo_Apple_Swift.png)

//: ---
//: #### Variables & Constantes
//: ---
//: Utiliser le mot clef 'let' pour définir une constante
let maximumNumberOfLoginAttempts = 10

//: Utiliser le mot clef 'var' pour définir une variable
//:
//: *Tip: n'utiliser les variables que lorsque la valeur contenue doit être modifiée, sinon, utiliser une constante.*
var currentLoginAttempt = 0

//: Les constantes ne peuvent pas être modifier
//:
//: __Essayer de décommenter la ligne ci-dessous__
// maximumNumberOfLoginAttempts = 9

//: Les variables peuvent changer:
currentLoginAttempt += 1

//: On ne peut pas re-déclarer une constante ou une variable
//:
//: __Essayer de décommenter la ligne ci-dessous__
// let maximumNumberOfLoginAttempts = 10
// var currentLoginAttempt = "Some string which is not an Int"

//: On peut déclarer plusieurs conteneurs sur une même ligne
let a = 10, b = 20, c = 30
var x = 0.0, y = 0.0, z = 0.0
//: ---
//: #### Inférence
//: ---
//:
//: On peut spécifier le type par un label
//:
//: *Par défaut Swift "devine" le type de contenu en fonction de ce qu'on lui founit*
//:
//: Les types de base en Swift sont:
/*:
 * Int
 * Double
 * Float
 * Bool
 * String
 * Array
 * Dictionary
*/

//: Voici comment définir un type:  *sans cette précision, Swift aurait inféré un type INT*
var conteneurDouble:Double = 4

//:
//: Swift est un langage avec un __typage fort__, chaque conteneur doit avoir un type,
//: même si on ne le réalise pas toujours à cause de l'inférence, chaque conteneur à un type.
//:
//: Un entier est typé comme un Int
let someInt = 1234

//: Inférence pour un nombre à virgule => Double
let someDouble = 1234.56

//: Si on souhaite avoir un Float, il faut le préciser
let someFloat: Float = 1234.56

//: Une chaine de characters est une String
let someString = "This will be a String"

//: Boolean
let someBool = true

//: Ces lignes ne compilent pas: on définit un type dans lequel on affecte une valeurs non attendue
// let someBool: Bool = 19
// let someInteger: Int = "45"
// let someOtherInt: Int = 45.6


//: Le nom des conteneurs ne doivent pas contenir de symboles mathématiques,
//:
//: mais ils peuvent ressembler à ça...
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//: On peut afficher une valeur grâce à la fonction print(valeur)
let fiveHundred = 500
print("The current value of fiveHundred is: \(fiveHundred)")

//: Dans le Playground, inutile d'utiliser *print()* mais en débug d'un vrai programme, si.
"The current value of fiveHundred is: \(fiveHundred)"

//: La concaténation de chaine ce fait de la manière suivante: "texte \(variable à injecter) text"

//: __EXO: Injecter un float, un int et une chaine de charactère dans une chaine de charactère.__
// ICI


//: ---
//: ##### Les commentaires
//:
//: ---

/* 
 Multi
    Ligne
*/

//: Commentaires multi-ligne **dans** un commentaire multi-ligne


/* 
	// Some variable
	var someVar = 10

	/* A function
     * 
     * This is a common way to comment functions, but it makes it difficult to comment out these
     * blocks.
     */
    func doSomething()
    {
		return
    }
*/


//: _Point virgule_
//:
//: On peut mettre ou *ommetre* le point virgule de fin de ligne.
//:
//: Par convention, on *NE MET PAS* de point rigule
var foo1 = 0
var foo2 = 0; // optionel

let meaningOfLife: UInt8 = 42 // Unsigned 8-bit integer
let randomNumber: Int32 = -34 // Signed 32-bit integer

//: Trouver les min / max des différents type de Int
UInt8.min
UInt8.max
Int32.min
Int32.max

//: Nombre avec décimales
//:
let pi: Double = 3.14159
let pie: Float = 100

//:
//: Pour la culture
//:
//: Des Int:
let decimalInteger = 17
let binaryInteger = 0b10001 // 17 en binaire
let octalInteger = 0o21 // 17 en octale
let hexInteger = 0x11 // 17 en Hexidecimal

//: Des float
1.25e2 // notation scientifique
1.25e-2
0xFp2 // On peut le décomposer comme suit: "0xF", "p", "2". à lire: 15 (en décimal => 0xF) à la puissance (p) 2, ce qui donne 60
0xFp-2
0xC.3p0

//: [Next](@next)
//: ---
//: Conversion Numérique
//:
//: ---
//:
//: Les conversions de type doivent être **explicites**
let three = 3 // Int
let pointOneFourOneFiveNine = 0.14159 // Double
let doublePi = Double(three) + pointOneFourOneFiveNine // Conversion explicite du Int en double

//: La conversion d'un float vers un Int tronque la décimale
//: doublePi devient 3 et -doublePi devient -3
let integerPi = Int(doublePi)
let negativePi = Int(-doublePi)

let someValue = 3 + 0.14159

//: **EXO: Essayer d'additionner un Int et un Double (stockés dans des conteneurs)**


