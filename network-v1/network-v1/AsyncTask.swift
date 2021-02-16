//
//  TacheAsynchrone.swift
//  NetworkV1
//
//  Created by Alban on 16/02/2021.
//

import Foundation

// Usage:
// AsyncTask.shared.execute { (str) in
//    print(str)
// }
//
// AsyncTask.shared.stopTask()

class AsyncTask {
    static let shared = AsyncTask()
    var timer:Timer?
    
    func execute(callBack:@escaping (String)->()) {
        var count = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { t in
            callBack("\(count)")
            count += 1
        }
    }
    
    func stopTask() {
        timer?.invalidate()
        timer = nil
    }
}
