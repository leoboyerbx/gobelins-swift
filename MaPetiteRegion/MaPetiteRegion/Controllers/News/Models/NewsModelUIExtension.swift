//
//  NewsModelUIExtension.swift
//  MaPetiteRegion
//
//  Created by  on 18/02/2021.
//

import Foundation

extension NewsModelUI {
    static func createModelsFromJsonModel(model:Infos) -> [NewsModelUI] {
        if let records = model.records {
            return records.map { (record) in
                return NewsModelUI(title: record.fields?.title ?? "",
                            imageUrl: record.fields?.image ?? "",
                            hat: record.fields?.fieldsDescription ?? "",
                            fullContent: record.fields?.freeText ?? "",
                            date: record.fields?.dateStart ?? "")
            }
            
        }
        return []
    }
}
