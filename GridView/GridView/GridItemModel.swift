import SwiftUI

struct GridItemModel: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}

// 샘플 테이더
extension GridItemModel {
    static let sampleData: [GridItemModel] = [
        GridItemModel(title: "1", imageName: "1"),
        GridItemModel(title: "2", imageName: "2"),
        GridItemModel(title: "3", imageName: "3"),
        GridItemModel(title: "4", imageName: "4"),
        GridItemModel(title: "5", imageName: "5"),
        GridItemModel(title: "6", imageName: "6")
    ]
}
