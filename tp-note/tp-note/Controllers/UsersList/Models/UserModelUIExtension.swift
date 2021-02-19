//
//  NewsModelUIExtension.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import Foundation

extension UserModelUI {
    static func createModelsFromJsonModel(model:[User]) -> [UserModelUI] {
        return model.map { record in
            return UserModelUI(id: record.id ?? 0,
                               name: record.name ?? "",
                               username: record.username ?? "",
                               company: record.company?.name ?? ""
            )
        }
    }
}
