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

//: [Next](@next)
