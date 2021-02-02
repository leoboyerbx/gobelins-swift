//: [Previous](@previous)

import Foundation

//: # Les Protocols suite


// Redéfinition des protocols de la page précédente
protocol MonProtocolAvecFonctionStatic {
    static func b()
}

protocol P {
    func a(_ p:Int) -> Int
}

protocol ProtocolInutile {
    func fonctionDeProtocolInutile()
}


//: ##### Une classe peut se conformer à plusieurs protocol (0...n)

class JeSuisUneClasseSansProtocol {
    
}

class JeSuisUneClasseRespectantUnProtocol:ProtocolInutile {
    func fonctionDeProtocolInutile() {}
}

class JeSuisUneClasseRespectantPlusieursProtocol:ProtocolInutile,P,MonProtocolAvecFonctionStatic {
    
    // Fonction provenant de 'ProtocolInutile'
    func fonctionDeProtocolInutile() {}
    
    // Fonction provenant de 'P'
    func a(_ p: Int) -> Int { return p }
    
    static func b() { print("from static") }
}

let sansProtocol = JeSuisUneClasseSansProtocol()
// Décommenter la ligne suivante et essayer de lancer l'auto completion (placer le curseur après le point et appuyer sur "échap"
// Quel conclusion en tirer? Quel différence avec d'autres langages?
// sansProtocol.

let unProtocol = JeSuisUneClasseRespectantUnProtocol()
unProtocol.fonctionDeProtocolInutile()

let plusieursProtocol = JeSuisUneClasseRespectantPlusieursProtocol()
plusieursProtocol.fonctionDeProtocolInutile()
plusieursProtocol.a(3)
JeSuisUneClasseRespectantPlusieursProtocol.b()
//: ##### Version synthétique:
protocol P1{}
protocol P2{}
protocol P3{}
protocol P4{}
protocol P5{}
class C:P1,P2,P3,P4,P5 {}

struct S:P1,P2,P3{}

//: Une classe peut se conformer 0...N protocols et hériter d'une classe se conformant elle même à 0...N protocols, classe héritant elle même d'une classe se conformant elle même à 0...N protocols...et ainsi de suite.
//:
//: **Tips:**
//:
//: *L'architecture est un vrai sujet: le papier et le crayon sont de vrais outils.*
//:
//: *Les protocols sont un des nombreux outils à disposition pour formaliser un problème*

//: [Next](@next)
