//: [Previous](@previous)

import Foundation
//: #### Construire une architecture permettant de gérer la demande suivante
//:
//: Un client vous demande une application permettant de piloter un systeme "domotique" nommé MyHouse
//: - Des volets roulants en BLE
//: - Des serrures connectées en Wifi ou en NFC
//: - Les connexions sont sécurisées/nécessitent une authentification.
//: - L'algorithme de chiffrement peut varier selon le type de device ou les contraintes legales.
//: - On envoit des commandes aux différents éléments du système
//: - Une commande est une String ou un tableau d'octet -> [UInt8] ou un type gardé secret par le client
//: - Une commande est toujours envoyée chiffrée
//: - Les communications sont bi-directionnelles et nécessitent une connexion.
//: - Il existe plusieurs sortes de volets roulant et plusieurs sortes de serrures.
//: - Il existe également des composants qui seront peut être ajoutés au système,
//: tels qu'un capteur de mouvements ou encore des caméras, des micros, système audio etc...
//: - Le tout fonctionnant également sans fil.



//: [Next](@next)
