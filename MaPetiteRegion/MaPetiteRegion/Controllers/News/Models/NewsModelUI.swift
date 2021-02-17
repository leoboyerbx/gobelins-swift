//
//  NewsModelUI.swift
//  MaPetiteRegion
//
//  Created by  on 17/02/2021.
//

import UIKit

struct NewsModelUI {
    var title: String = ""
    var imageUrl: String = ""
    var hat: String = ""
    var fullContent: String = ""
    var date: String = ""
    
    static func defaultModel () -> NewsModelUI {
        return NewsModelUI(title: "Candidature d’Annecy au label « Capitale française de la culture »", imageUrl: "urllhjk", hat: "L’annonce est tombée lundi 8 février ; le ministère de la Culture n’a pas retenu la Ville d’Annecy parmi les 9 collectivités susceptibles de décrocher le label « Capitale française de la culture » en […]", fullContent: "hkdvdshkds iu")
    }
}
