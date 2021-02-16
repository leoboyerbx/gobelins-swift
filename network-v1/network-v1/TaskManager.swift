//
//  TaskManager.swift
//  network-v1
//
//  Created by  on 16/02/2021.
//

import Foundation

class TaskManager {
    static let instance = TaskManager()
    
    func doTask(callback:@escaping(String) -> ()) {
        AsyncTask.shared.execute(callBack: callback)
    }
}
