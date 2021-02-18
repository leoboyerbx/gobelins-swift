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
        return NewsModelUI(title: "Candidature d’Annecy au label « Capitale française de la culture »", imageUrl: "annecy_img", hat: "L’annonce est tombée lundi 8 février ; le ministère de la Culture n’a pas retenu la Ville d’Annecy parmi les 9 collectivités susceptibles de décrocher le label « Capitale française de la culture » en […]", fullContent: "Candidature d’Annecy au label « Capitale française de la culture » L’annonce est tombée lundi 8 février ; le ministère de la Culture n’a pas retenu la Ville d’Annecy parmi les 9 collectivités susceptibles de décrocher le label « Capitale française de la culture » en 2022. « Annecy, la Ville des possibles », telle est la trame du dossier de candidature qui a mobilisé de nombreux acteurs de la vie culturelle annécienne en un temps record : 5 semaines, entre la décision prise de concourir et la constitution du dossier de candidature (fin novembre et décembre 2020). Un peu court, mais une première étincelle ! Pour autant, cette première mobilisation a permis de poser les jalons de plusieurs projets. Cette démarche de candidature a impulsé un formidable élan collectif et fédérateur autour d’une réflexion commune : scénographie la ville de demain. Ouvrir le champ des possibles d’une ville en pleine mutation Ainsi, le projet proposait qu’une centaine de sites, répartis dans toute la ville, soient investis par des réalisations artistiques, déambulatoires, rassembleuses et spectaculaires. Une démarche inscrite sur le long terme, impliquant toute la population et toutes les générations, tissant des liens entre les territoires et leur identité, dont le but est d’ouvrir le « champ des possibles » d’une ville en pleine mutation. Fabien Géry, maire Adjoint en charge de la culture et des associations culturelles : « Nous souhaitons faire de ce projet un acte fondateur, inscrit dans la durée, associant habitants, acteurs culturels, associations et partenaires, et en faire le socle d’une valorisation de notre territoire et de sa population. Très rapidement, et sur la base des projets et actions qui ont été proposés par tous nos partenaires, nous réunirons ceux-ci pour poursuivre et concrétiser la démarche. Nous sommes convaincus que la culture est une ressource essentielle pour contribuer aux possibles du territoire et à ses mutations. »")
    }
}
