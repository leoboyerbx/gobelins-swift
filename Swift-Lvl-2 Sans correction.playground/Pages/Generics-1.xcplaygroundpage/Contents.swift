//: [Previous](@previous)

import Foundation
//: # Les Générics
//:
//: Pour comprendre le concept de 'générics': un exemple simple à construire ensemble
//:

// La fonction suivante prend en parametre un objet dont le type est générique
func fonctionAvecParametreGenericExemple1<T>(param:T) {
    // Ici 'param' est de type 'T'
    // 'T' n'est qu'un label. On utilise T par convention mais tout autre nom
    // est fonctionnel
    // L'auto-completion sur 'param.' n'offre aucune option
    // -> le type 'T' ne correspond à rien, il faut le 'spécialiser'.
    switch param {
    case let p as String:
        print("Param est de type string")
    default: break
    }
    
}

fonctionAvecParametreGenericExemple1(param: "")
fonctionAvecParametreGenericExemple1(param: 3)

func fonctionAvecParametreGenericExemple2<S>(param:S) {
}

func fonctionAvecParametreGenericExempleAvec2Param<U,H>(param:U,param2:H) {
}

func fonctionGenericExempleNomLong<JeSuisUnLabelPourReprésenterUnTypeGeneric>(param:JeSuisUnLabelPourReprésenterUnTypeGeneric) {
    
}


// Mix générics + type standard
func fonctionMix<T>(param:T,maChaine:String){

}

func fonctionAvecParametreGeneric<T>(param:T) {
    switch param {
    case let pIsAString as String:
        print(pIsAString)
    case let pIsAFloat as Float:
        print("Un Float: \(pIsAFloat)")
    default: break
    }
}

fonctionAvecParametreGeneric(param: "Hello")
fonctionAvecParametreGeneric(param: Float(0.5))

class Toto1<S>{
    var maVar:S? = nil
    
    func test1(p:S) {
        print(p)
    }
}

class Toto<T>:Toto1<String>{
    func test<U>(p:T,p2:U) {
        print(p)
    }
}

let t = Toto<Float>()
t.test(p: 0.5, p2: Int(9))
t.test1(p: "Hey")





// Créer une methode générique prennant 2 parametres: le 1er est générique, le 2nd est un String
// Si le premier parametre est un Int, l'afficher.

// Créer une classe générique MaClasse
// Cette classe possède 2 types génériques
// Le premier type générique est utilisé par une propriété de classe
// Le second type générique est utilisé comme paramètre d'une methode nommé maMethode
// MaClasse possède une methode générique nommé maMethodeGenerique prennant 2 parametres le 1er est générique, le 2nd est un Float








//: [Next](@next)
