//: [Previous](@previous)

import Foundation

//: ## Les extensions
//:
//: Une extension étend les capacités d'un classe ou d'une structure
//:
//: Sans avoir à modifier la classe étendu, on peut lui ajouter des fonctionnalités
//:


class A {
    var name = "toto"
    func jeNeSaisFaireQuUneSeuleChose() {
        print("Afficher mon nom: \(name)")
    }
}

extension A {
    
    func fonctionAjoutée() {
        name = "titi"
        print("Cette fonction étend les possibilités de A")
    }
    
}

let a = A()
a.jeNeSaisFaireQuUneSeuleChose()
a.fonctionAjoutée()
a.jeNeSaisFaireQuUneSeuleChose()

//: #### Exemple concret:

//: On veut pouvoir faire d'une String une chaine sans espace et sans majuscule

//: **Option 1:** On peut écrire ça à chaque fois:
var chaineToModify = "Je ne veux plus aucun espace dans cette chaine et PLUS AUCUNE Lettre EN MAJUSCULE!"
var uneChaine = chaineToModify.replacingOccurrences(of: " ", with: "")
uneChaine = uneChaine.lowercased()
print(uneChaine)

//: **Option 2:** On peut créer une fonction (qui ne sera pas forcément visible dans tout le code)
func removeSpaceAndLowerCase(string:String) -> String {
    var uneChaine = string.replacingOccurrences(of: " ", with: "")
    uneChaine = uneChaine.lowercased()
    return uneChaine
}

var chaine = removeSpaceAndLowerCase(string: chaineToModify)
print(chaine)

//: **Option 3:** On peut créer une extension et toutes les String du projet auront cette fonction disponible

extension String {
    mutating func removeSpaceAndLowerCaseMe() {
        self = self.replacingOccurrences(of: " ", with: "")
        self = self.lowercased()
    }
}

chaineToModify.removeSpaceAndLowerCaseMe()
print(chaineToModify)
//: **Conclusion:**
//: On envisage l'option 2 ou 3, jamais la 1!


//: Pourquoi le mot clef mutating est obligatoire?
//: Faire un command+clic sur le mot clef 'String'

//: [Next](@next)
