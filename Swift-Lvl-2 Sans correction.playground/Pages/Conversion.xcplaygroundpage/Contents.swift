//: [Previous](@previous)
//:
//: ---
//: ## Conversion Numérique
//:
//: ---
//:
//: Les conversions de type doivent être **explicites**
// A compléter très largement en cours

let three = 3 // Int
let pointOneFourOneFiveNine = 0.14159 // Double
let doublePi = Double(three) + pointOneFourOneFiveNine // Conversion explicite du Int en double


//: La conversion d'un float vers un Int tronque la décimale
//: doublePi devient 3 et -doublePi devient -3
let integerPi = Int(doublePi)
let negativePi = Int(-doublePi)

let someValue = 3 + 0.14159

//: **EXO: Essayer d'additionner un Int et un Double (stockés dans des conteneurs)**
// ICI
let myInt: Int = 56
let myDouble = 78.17

let result = Double(myInt) + myDouble
//: [Next](@next)
