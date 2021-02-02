//: [Previous](@previous)

//: ---
//: ## Optional
//: ---

//: _Définition:_
//:
//: Un conteneur optionel signifie que son contenu __peut__ être nil (vide,NULL,null selon les langages)
//:
//: On le note avec un ? après son type
var chaineNormale: String = "texteuh !"
// chaineNormale = nil // Error

var chaineOptionelle: String?
chaineOptionelle = "texte"

chaineOptionelle = nil // Pas d'Error
//


//print(chaineOptionelle)


//if let unwrapped = chaineOptionelle {
//    print(unwrapped)
//} else {
//    print("chaineOptionnelle is empty (nil)")
//}


class A{}
var myInstance: A?

myInstance = A()


// Les choses dangereuses
//var cumul = chaineNormale + (chaineOptionelle ?? "Valeur pas défaut pour chaine optionnelle") // A ne pas utiliser, ça cache la complexité
//
//// "T'inquiète, je gère je sais que chaineOptionnelle n'est pas nil"
//var cumul2 = chaineNormale + chaineOptionelle! // Truc dangereux, car peut créer une runtime error si chaineOptionnelle est nul
// Ne soyez jamais surs de vous !



// Exos
/**
 Définir une classe Y
 Définir une propriété variable de type String optionnelle
 Définir une propriété variable de type Int
 
 Trouver les différentes possibilités d'implémentation
 */
class Y1 {
    var chaineOptionnelle: String? // Implicitement nil
    var p: Int = 1
}

class Y2 {
    var chaineOptionnelle: String?
    var p: Int = 1
    
    init(chaine: String?) {
        if let unWrappedChaine = chaine {
            chaineOptionnelle = unWrappedChaine
        }
    }
}

class Y3 {
    var chaineOptionnelle: String?
    var p: Int = 1
    
    init(chaine: String?) {
        chaineOptionnelle = chaine
    }
}

/**
 Définir une classe Z
 Définir une propriété contante de type String optionnelle
 Définir une propriété constante de type Int
 
 Trouver les différentes possibilités d'implémentation
 */
class Z1 {
    let chaineOptionnelle: String?
    let p: Int = 1
    
    init(chaine: String?) {
        // Méthode un peu "bourrin", if inutile, voir Z2
        if let unWrappedChaine = chaine {
            chaineOptionnelle = unWrappedChaine
        } else {
            chaineOptionnelle = nil
        }
    }
}

// Bcp plus simple
class Z2 {
    let chaineOptionnelle: String?
    let p: Int = 1
    
    init(chaine: String? = nil) {
        chaineOptionnelle = chaine
    }
}

// Avec surcharge statique du constructeur
class Z3 {
    let chaineOptionnelle: String?
    let p: Int = 1
    
    init(chaine: String) {
        chaineOptionnelle = chaine
    }
    init() {
        chaineOptionnelle = nil
    }
}


var zInstance = Z2(chaine: "patate")
var zInstance2 = Z2()
//print (zInstance.chaineOptionnelle)


// Créer un tableau variable contenant des Str optionnelles
// Au minimum 5 valeurs dedans dont une valeur nil
// Accéder à la valeur de chacune des cases du tableau SSI cette valeur n'est pas nil, et l'afficher
// -> "unwrap" obligatoire (if let)

var fruitsRelatedStuff: [String?] = ["Potato", "Watermeloon", "Strawberry", nil, "RaspberryPi", "Adafruit", "🍎", nil, "🥝", "🍍"]

for fruity in fruitsRelatedStuff {
    if let unwrapped = fruity {
        print(unwrapped)
    } else {
        print("No fruity thing here... 😲")
    }
}

// La même chose avec un tableau optionnel
var optionalFruitsRelatedStuff: [String?]? = ["Potato", "Watermeloon", "Strawberry", nil, "RaspberryPi", "Adafruit", "🍎", nil, "🥝", "🍍"]

optionalFruitsRelatedStuff = nil

if let unwrappedArray = optionalFruitsRelatedStuff {
    for fruity in unwrappedArray {
        if let unwrapped = fruity {
            print(unwrapped)
        } else {
            print("No fruity thing here... 😲")
        }
    }
} else {
    print("There is no fruity thing at all... 😭")
}
//: [Next](@next)
