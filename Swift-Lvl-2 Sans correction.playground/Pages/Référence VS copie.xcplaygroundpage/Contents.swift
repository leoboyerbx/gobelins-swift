//: [Previous](@previous)

import Foundation

class MaClass{
    var value:Int = 3
}

struct MaStruct{
    var value:Int = 3
}

var c = MaClass()
var s = MaStruct()

c.value = 4
c.value

s.value = 4
s.value

//: Le passage par référence est le comportement par défaut d'une classe
func testForClassPutFiveInValueProperty(param:MaClass){
    param.value = 5
}

testForClassPutFiveInValueProperty(param:c)
c.value


//: Le passage par valeur est le comportement par défaut d'une structure
//: Décommenter pour constater
//func testForStructPutFiveInValueProperty(param:MaStruct){
//    param.value = 5
//}

//: On peut forcer le passage par référence d'une structure avec le mot clef **inout**
//: dans la déclaration
func testForStructPutFiveInValueProperty(param:inout MaStruct){
    param.value = 5
}
//: et en utilisant le symbole '&' lors de l'appel
testForStructPutFiveInValueProperty(param:&s)
s.value

//: On peut également modifier localement une structure en créant une copie locale:
func testForStructPutSixInValuePropertyOfTheCopy(param:inout MaStruct) {
    var localCopy = param
    localCopy.value = 6
}
testForStructPutSixInValuePropertyOfTheCopy(param: &s)
s.value

//: ## Des structures réactives, presque...vivantes!
var reactiveStruct = MaStruct() {
    didSet{
        print("struc modified \(reactiveStruct.value)")
    }
}
testForStructPutFiveInValueProperty(param:&reactiveStruct)

//: #### Exemple de cas d'usage
//:
//: On imagine ici une structure représentant le contexte d'un objet connecté.
//:
//: Ce contexte est une structure contenant différentes informations
//:
//: Grace au didSet, il est possible d'exécuter une fonction seulement lorsque le contexte
//: est favorable. Ici: lancer une mise à jour lorsque l'objet est sur batterie.

struct Context {
    enum Energy {
        case battery,wind,water
    }
    enum Connection {
        case wifi,wire,ble
    }
    var locationIsKnown:Bool = false
    var energySource:Energy? = nil
    var connection:Connection = .wifi
    
    var name:String
    
    init(objectName:String) {
        self.name = objectName
    }
    
    func isReadyForTheFirmwareUpdate() -> Bool {
        
        guard let eSource = energySource else {
            return false
        }
        
        switch eSource {
        case .battery:
            return true
        default: break
        }
        
        return false
    }
}

var context = Context(objectName:"MonObjet"){
    didSet{
        if context.isReadyForTheFirmwareUpdate() {
            print("Device is ready")
            print("Launching a risky long task")
        }else{
            print("Device is not ready")
        }
    }
}

func locationHasChanged(c:inout Context) {
    c.locationIsKnown = false
}

context.connection = .wire

locationHasChanged(c: &context)

context.energySource = .battery



//: [Next](@next)
