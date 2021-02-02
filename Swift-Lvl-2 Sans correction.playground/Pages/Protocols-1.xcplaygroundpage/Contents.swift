//: [Previous](@previous)

import Foundation

//:
//: # Les Protocols
//:
//: ---
//: #### Choses à connaitre
//:
//: Un protocol peut être comparé à une interface en Java.
//:
//: Un protocol par lui même ne fait rien.
//:
//: Un protocol est un **"comportement à adopter"**
//:
//: Son but est de définir un ensemble de methodes pouvant/devant être adoptés
//: par la classe ou la structure qui souhaite se conformer à celui-ci.
//: ##### Exemple:

protocol Proto {
    associatedtype MonType
    associatedtype MonType2
    
    func toto(param:MonType) -> String
    func titi() -> MonType
    func tata() -> MonType2
    
}

class A:Proto{
   
    func tata() -> Float {
        return 0.0
    }

    func titi() -> String {
        return ""
    }
    
    func toto(param: String) -> String {
        return ""
    }
}















protocol ProtocolInutile {
    associatedtype ReadableDataFormat
    var property:ReadableDataFormat? {get set}
    func fonctionDeProtocolInutile()
}

class ClasseToutBete:ProtocolInutile {
    var property: String? = nil
    func fonctionDeProtocolInutile() {
        print("Le contenu/l'implémentation de la fonction est définie dans la ou les classes qui se conforment au protocol m'ayant définit")
    }

}

let maClasse = ClasseToutBete()
maClasse.fonctionDeProtocolInutile()

//: ##### Version plus synthétique:
protocol P {
    func a(_ p:Int) -> Int
}

class C:P{
    func a(_ p:Int) -> Int { return p }
}

C().a(3)

//: Un protocol spécifie un besoin, un cadre.
//:
//: Dans certains contextes, il peut être nécessaire de définir une fonction comme static

protocol MonProtocolAvecFonctionStatic {
    static func b()
}

class C2:MonProtocolAvecFonctionStatic{
    static func b() {
        print("Je suis une methode statique")
    }
}

C2.b()
//: *On remarque que la classe C2 n'est pas instanciée*

//: [Next](@next)
