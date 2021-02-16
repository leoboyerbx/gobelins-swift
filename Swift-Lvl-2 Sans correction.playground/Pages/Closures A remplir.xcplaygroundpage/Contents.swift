//: [Previous](@previous)

//: ---
//: ## Les Closures
//: ---
// var == variable
// toto: nom de la var
// :Int: type de la variable
// O: affecter 0 à la variable
var toto :Int = 0


func maFonction (p1: Int) -> String {
    return "coucou"
}
// Signature de la function:
// (Int) -> String

func maFonction2 () -> Int {
    return 3
}
// Sa signature:
// () -> Int

func maFonction3 () {}
// Sa signature:
// () -> ()


// var == variable
// maclosure: nom de la var
// () -> (): type de la variable: fonction sans valeur de retour
// {}: valeur stockée dans la closure
var maClosure: () -> () = {
    print("hey depuis ma closure")
}



// Déclarer une closure qui prend 2 paramètres de type int et float
var maSuperClosure: (Int, Float) -> String = { x, y in
    return "\(x), \(y)";
}

func maSuperFonction(x: Int, y: Float) -> String {
    return "\(x), \(y)";
}


maSuperClosure(3, 5.0)
maSuperFonction(x: 3, y: 5.0)


class A {
    var toto:Int = 0
    var action:((Int) -> ())?
    
    func grosCalcul() {
        let grosResultat = toto * toto
        action?(grosResultat)
    }
    
    func fonctionAvecCallback(p1: Int, callback:@escaping(Int) -> ()) {
        toto = p1
        action = callback
    }
}

let monInstance = A()
monInstance.fonctionAvecCallback(p1: 12) { (monInt) in
    print("mon resultat: ", monInt)
}

print("avant gros calcul")
monInstance.grosCalcul()
print("après gros calcul")


// Exercice classe B
class B {
    var maClosure: ((Float, Float) -> ())?
    var maVariable: String = ""
    
    func defineClosure (callback: @escaping (Float, Float) -> ()) {
        maClosure = callback
    }
    
    func runClosure () {
        maClosure?(4, 12)
    }
}

let maSuperInstance = B()
maSuperInstance.defineClosure { (x, y) in
    print("Mes super nombres sont \(x) et \(y)")
}

maSuperInstance.runClosure()

maSuperInstance.defineClosure { (x, y) in
    print("Nouveau code exécutable dans ma closure")
}
maSuperInstance.runClosure()







// A compléter très largement en cours
// a closure that has no parameters and return a String
var hello: () -> (String) = {
    return "Hello!"
}

hello() // Hello!

// a closure that take one Int and return an Int
var double: (Int) -> (Int) = { x in
    return 2 * x
}

double(2) // 4

// you can pass closures in your code, for example to other variables
var alsoDouble = double

alsoDouble(3) // 6
//: [Next](@next)
