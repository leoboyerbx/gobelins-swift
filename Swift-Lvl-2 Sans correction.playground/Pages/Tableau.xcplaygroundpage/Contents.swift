//: [Previous](@previous)
//:
//: Arrays
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les tableaux sont des listes ordonées d'éléments
//:
//: * Les éléments d'un tableau doivent être clairement typés
//:
//: * Tout les éléments sont de même type
//:
//: * Un tableau déclaré avec let est dit `immutable`, alors que déclarer en var il est dit `mutable`
//: ---
//:
// A compléter très largement en cours
//: Création d'un tableau de String
var someArray = Array<String>()

//: Plus court: __la version la plus utilisée__
var shorter: [Any]
shorter = [Any]()
shorter.append("t")
shorter.append(3)

for s in shorter {
    if s is String{
        var sAsString = (s as! String)
        sAsString.append("a")
    }
    if s is Int {

    }
}

for s in shorter {
    if var myString = s as? String {
        myString.append("a")
    }
    
    if s is Int {
        
    }
}

shorter[1]

//: Création d'un tableau avec ajout de donnée inline
var commonPets: [String] = ["Cats", "Dogs"]

//: Version courte utilisant l'inférence
var shoppingList = ["Eggs", "Milk"]

//: ---
//: #### Accèder aux données et modifier un tableau
//:
//: ---
//: Obtenir le nombre d'élément
shoppingList.count

//: Vérifier si le tableau est vide
if !shoppingList.isEmpty { "it's not empty" }

//: Ajouter à la fin du tableau
shoppingList.append("Flour")
shoppingList.append("Baking Powder")
shoppingList.count

//: Ajouter un tableau (de même type)
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.count

//: obtenir l'élément à l'index
shoppingList[0]
shoppingList[1]

//: remplacer l'élément à l'index
shoppingList[0] = "Six Eggs"


//: Ici on remplace 3 éléments par 2, le 3ème est supprimé
shoppingList[4...6] = ["Banannas", "Apples"]

//: Ici on remplace 2 éléments par 3, le 3ème est ajouté
shoppingList[4..<6] = ["Limes", "Mint leaves", "Sugar"]

//: Insérer un item à un index
shoppingList.insert("Maple Syrup", at: 3)

//: supprimer le dernier et le stocker dans une variable
let apples = shoppingList.removeLast()

//: ---
//: #### Enumeration
//:
//: ---

//: Itération
for item in shoppingList
{
    item
}

//: ---
//: ####  Creer et initialiser un tableau
//:
//: ---

// on stock un tableau d'int vide dans someInts
var someInts = [Int]()

someInts.append(3)
someInts

//: Initialisation et remplissage
var threeDoubles = [Double](repeating: 3.3, count: 3)

// Initialisation et remplissage (utilisation de l'inférence)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

//: Tableau immutable
let immutableArray = ["a", "b"]

//: __TIP:On peut changer les éléments contenus dans un tableau mais pas le tableau__
//:
//:
// immutableArray[0] = "b"
//
// immutableArray += "c"

//: Les tableaux peuvent être copiés

//: voici trois copies d'un tableau
var a = [1, 2, 3]
var b = a
var c = a

//: Observer les valeurs des autres tableaux
a[0] = 42
b[0]
c[0]

a
b
c

b.append(4)

a
b
c

//: [Next](@next)
