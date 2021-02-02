//: [Previous](@previous)
//:
//: Les Classes
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//:
//:
//: ---
//:

//: ![Classe?](Swift-09.png)


// A compléter très largement en cours
class MaClasse {
    var toto = ""
    var titi = 3
    
    func maFonctionSansParam() {
        print("je ne fais rien")
    }
    
    init(monParam:String) {
        toto = monParam
    }
    
}

var maClassInstance = MaClasse(monParam: "tutu")
maClassInstance.maFonctionSansParam()


//:
//: Les Structures
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//:
//:
//: ---
//:

// A compléter très largement en cours
struct MaStruct {
    var toto = ""
    var titi = 3
    
    func maFonctionSansParam() {
        print("je ne fais rien")
    }
    
//    init(monParam:String) {
//        toto = monParam
//    }
    
}
var maStructInstance = MaStruct(toto: "toto", titi: 1)
maStructInstance.maFonctionSansParam()


// Exercice sur les classes

/**
 Class D, prop Int avec valeur par défaut
 Class C, prop String, sans valeur par défaut
 */
class D1 {
    var prop: Int = 1
}
class D2 {
    let prop: Int = 1
}
class D3 {
    let prop: Int
    
    init(propVal: Int = 1) {
        // Dans ce cas là, on peut modifier une let
        prop = propVal
    }
}
class D4 {
    var prop: Int
    
    init(propVal: Int = 1) {
        prop = propVal
    }
}

class C1 {
    var prop: String
    init(propVal: String) {
        prop = propVal
    }
}
class C2 {
    let prop: String
    init(propVal: String) {
        prop = propVal
    }
}
class C3 {
    var prop: String
    init() {
        prop = ""
    }
}
class C4 {
    let prop: String
    init() {
        prop = ""
    }
}

let c1Instance = C1(propVal: "Hello")
let c3Instance = C3()



// Héritage sur les classes
class E {
    func titi () {
        print("titi depuis E")
    }
}

class F: E {
    func toto() {
        print ("toto depuis F")
    }
    override func titi() {
        print ("Titi depuis F")
        
        // Si je peux accéder à la classe parente
        
        super.titi()
    }
}

var fInstance = F()
fInstance.toto()
fInstance.titi()


/*
 Créer 2 classes G et I
G contient 3 propriétés: Int? variable, String variable, Float? variable
 G contient une func sayHello avec un paramètre de type String oprionnel ayant pour valeur par défaut ""
 
 Cett fonction affiche la valeur passée en paramètre
 I hérite de G et possiède une prop de type String
 I override la fonction sayHello de G et stocke dans la propriété le paramètre
*/

class G {
    var p1: Int?
    var message: String
    var p2: Float?
    
    func sayHello(name: String? = "") {
        print(name)
    }
    
    init() {
        message = "Hello"
    }
}

let gInstance: G = G()

gInstance.sayHello(name: "Billy")
gInstance.sayHello()


class I:G {
    var myName: String
    
    override init() {
        myName = ""
        super.init()
    }
    
    override func sayHello(name: String? = "") {
        if let nameVal = name {
            myName = nameVal
        } else {
            print("empty param")
        }
    }
}


let iInstance: I = I()

iInstance.sayHello()
iInstance.sayHello(name: "Billy")
print(iInstance.myName)
//: [Next](@next)
