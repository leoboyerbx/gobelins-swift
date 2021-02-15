//
//  DataManager.swift
//  carnet-adresses
//
//  Created by  on 15/02/2021.
//

import Foundation

class DataManager {
    static let instance = DataManager()
    
    var contacts:[Contact] = []
}

class Contact {
    var name: String = ""
    var surname: String = ""
    var phone: String = ""
    
    init(name: String?, surname: String?, phone: String?) {
        self.name = name ?? ""
        self.surname = surname ?? ""
        self.phone = phone ?? ""
    }
}
