//import Foundation
//
//let queue = OperationQueue()
//
//final class ContentImportOperation: Operation {
//
//    let itemProvider: NSItemProvider
//
//    init(itemProvider: NSItemProvider) {
//        self.itemProvider = itemProvider
//        super.init()
//    }
//
//    override func main() {
//        guard !isCancelled else { return }
//        print("Importing content..")
//        // .. import the content using the item provider
//       
//    }
//}
//
//final class UploadContentOperation: Operation {
//    override func main() {
//        guard !dependencies.contains(where: { $0.isCancelled }), !isCancelled else {
//            return
//        }
//
//        print("Uploading content..")
//    }
//}
//
//
//let fileURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
//let contentImportOperation = ContentImportOperation(itemProvider: NSItemProvider(contentsOf: fileURL)!)
//
//contentImportOperation.completionBlock = {
//    print("Importing completed!")
//}
//
//let contentUploadOperation = UploadContentOperation()
//contentUploadOperation.addDependency(contentImportOperation)
//contentUploadOperation.completionBlock = {
//    print("Uploading completed!")
//}
//
//queue.addOperations([contentImportOperation, contentUploadOperation], waitUntilFinished: true)
