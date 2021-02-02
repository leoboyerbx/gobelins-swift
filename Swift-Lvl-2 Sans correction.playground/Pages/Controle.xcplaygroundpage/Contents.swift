//: [Previous](@previous)

//: ---
//: ## Les structures de contrôle
//:
//: ---
//:
// A compléter très largement en cours

// import de fondation (utilisé pour l'import de la fonction sin())
import Foundation


//: ![If Else?](Swift-07.png)

//: ---
//: ##### IF / IF-ELSE
//:
//: ---

if 1 == 1 {
    // CODE
}

if 1 == 1 {
    // CODE
} else {
    // CODE
}

if 1 != 2 {} // true
if 1 == 2 {} // false
if 1 < 2 {} // true
if 1 > 2 {} // false
if 1 <= 2 {} // true
if 3 >= 3 {} // true

//: __AND__
if true && true {} // true
if true && false {} // false
if false && true {} // false
if false && false {} // false

//: __OR__
if true || true {} // true
if true || false {} // true
if false || true {} // true
if false || false {} // false

//: __NEGATIVE__
if !true {} // false
if !false {} // true
if !(true && true) {} // false
if !(true || false) {} // false
if !(false || false) {} // true


//: ---
//: ##### FOR
//:
//: ---



for i in 0...10 {
    print(i)
}

for i in 0..<10 {
    print(i)
}


//: ---
//: ##### WHILE
//:
//: ---

// Décomenter et re-commenter pour de meilleurs performances


var i:Double = 0
var sinus:Double = 0
while i < 200 {
    print(i)
    let step = Double(i/10)
    i += 1
    sinus = sin(step)
}

//: __TIP: passer la souris tout à droite du résultat de la ligne sinus = sin(step) et cliquer sur le bouton `+`__


//: ---
//: ##### SWITCH
//:
//: ---

//: Les ENUMs sont très puissants en Swift, il feront l'objet d'un chapitre détaillé,
//: le propos ici est de présenter la syntaxe du switch

let a=1
let b=2
let c=3

let listeDeConstante = [a,b,c]
listeDeConstante[0]

enum MonEnum:Int {
    case un = 42 ,deux = 2,trois = 3
}

func maFonction(p:MonEnum) {
    switch p {
    case .un: print()
    case .deux: break
    case .trois: break
    }
}

var chiffre = MonEnum.un

switch chiffre {
    case .un: print("\(MonEnum.un)")
    case .deux: print("\(MonEnum.deux)")
    case .trois: print("\(MonEnum.trois)")
}

var maChaine = "MaChaine"

switch maChaine {
case "MaChaine":
    print("found")
case "Ma Chaine":
    print("found")

default: print("not found")

    
}

//: Commenter un des case et constater l'erreur


//: [Next](@next)
