import UIKit

extension AlbumModelUI {
    static func createModelsFromJsonModel(model:Albums) -> [AlbumModelUI] {
        return model.map { record in
            return AlbumModelUI(title: record.title ?? "", photos: [])
        }
    }
    static func createPopulatedModelsFromJsonModel(model: Albums, callback: @escaping ([AlbumModelUI]) -> ()) {
        let group = DispatchGroup()
        var modelsUI: [AlbumModelUI] = []
        
        for record in model {
            group.enter()
            NetworkManager.instance.getPhotos(of: record.id ?? 0) { (photos) in
                modelsUI.append(AlbumModelUI(title: record.title ?? "", photos: photos))
                group.leave()
            }
        }
        
        group.notify(queue: .main) {
            callback(modelsUI)
        }
    }
}
