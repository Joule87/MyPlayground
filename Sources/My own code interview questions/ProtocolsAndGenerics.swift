//import UIKit
//
//protocol Cache {
//    associatedtype StoredType
//    func store(_ object: StoredType, for key: String)
//    func fetchObject(for key: String) -> StoredType?
//    func removeAll()
//}
//
//class DataCache: Cache {
//    func store(_ object: Data, for key: String) { print("stored data with key \(key)") }
//    func fetchObject(for key: String) -> Data? { print("fetch object with key \(key)"); return nil }
//    func removeAll() { print("removed all data") }
//}
//
//class ImageCache: Cache {
//    func store(_ object: UIImage, for key: String) { print("stored image with key \(key)") }
//    func fetchObject(for key: String) -> UIImage? { print("fetch object with key \(key)"); return nil }
//    func removeAll() { print("removed all images") }
//}
//
//let dataCache = DataCache()
//let imageCache = ImageCache()
//
////
////let caches: [Cache] = [dataCache, imageCache]
////
////caches.forEach { $0.removeAll() }
//
//let removeAllCaches: [()->Void] = [
//   dataCache.removeAll,
//   imageCache.removeAll
//]
//
//removeAllCaches.forEach { $0() }
