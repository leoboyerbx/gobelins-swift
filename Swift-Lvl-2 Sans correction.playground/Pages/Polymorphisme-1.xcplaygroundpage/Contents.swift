//: [Previous](@previous)
import Foundation

//: # Le polymorphisme 1
//:
//: Pour comprendre le polymorphisme: un exemple simple à construire ensemble
//:

class A {
    func maMethodeDeLaClasseA() {
        print("maMethodeDeLaClasseA")
    }
}

// La classe B hérite de A
class B:A {
    func maMethodeDeLaClasseB() {
        print("maMethodeDeLaClasseB")
    }
}

// La classe C hérite de B et donc de A
class C:B {
    func maMethodeDeLaClasseC() {
        print("maMethodeDeLaClasseC")
    }
}

let classA = A()
let classB = B()
let classC = C()
//: Comment tester le type d'une classe?
// le mot clef 'is'
classA is B
classB is B

// exemple avec un switch
switch classB {
case is A: print("classB is A")
case is B: print("classB is B")
}
// -> Constater le comportement du switch.
// Rechercher comment l'utiliser de manière adéquate.

// On peut se promener dans la chaine d'héritage
if let objOfClassB = classC as? B {
    objOfClassB.maMethodeDeLaClasseA()
    objOfClassB.maMethodeDeLaClasseB()
    objOfClassB is A
    objOfClassB is B
    objOfClassB is C
    // On constate que is C est toujours vrai
    // on peut donc à nouveau faire:
    if let objOfClassC = objOfClassB as? C {
        objOfClassC.maMethodeDeLaClasseC()
    }
}

// La fonction prennant un objet de type A en parmetre
func fonctionExemple(parametre:A) {
    parametre.maMethodeDeLaClasseA()
}

print("fonctionExemple")
// On peut lui donner un objet de type A
fonctionExemple(parametre: classA)

// On peut lui donner un objet de type B
fonctionExemple(parametre: classB)

// La fonction prennant un objet de type C en parmetre
func fonctionExempleV2(parametre:C) {
    
    switch parametre {
    case let objA as A:
        objA.maMethodeDeLaClasseA()
    case let objB as B:
        objB.maMethodeDeLaClasseA()
        objB.maMethodeDeLaClasseB()
    }
    
}

print("fonctionExempleV2")

// Corriger fonctionExempleV2 pour qu'elle puisse gérer les classes de type A, B et C
// Expliquer pourquoi elle ne fonctionne pas comme attendu.


//: Exercice:
//:
//: Créer une methode attendant en parametre un objet de type B
//: Appeler dans cette methode maMethodeDeLaClasseC()

//: [Next](@next)
