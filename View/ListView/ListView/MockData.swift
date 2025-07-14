import SwiftUI

// 데이터 모델
struct MockData: Identifiable {
    let id = UUID() // SwiftUI의 ForEach에서 고유한 값 필요
    var title: String
    var name: String
}

// 더미 데이터
extension MockData {
    static let modeling: [[MockData]] = [
        [
            MockData(title: "1", name: "1"),
            MockData(title: "2", name: "2"),
            MockData(title: "3", name: "3"),
            MockData(title: "4", name: "4"),
        ],
        [
            MockData(title: "5", name: "5"),
            MockData(title: "6", name: "6"),
            MockData(title: "7", name: "7"),
        ],
        [
            MockData(title: "1", name: "1"),
            MockData(title: "2", name: "2"),
            MockData(title: "3", name: "3"),
            MockData(title: "4", name: "4"),
        ],
        [
            MockData(title: "5", name: "5"),
            MockData(title: "6", name: "6"),
            MockData(title: "7", name: "7"),
        ],
        [
            MockData(title: "1", name: "1"),
            MockData(title: "2", name: "2"),
            MockData(title: "3", name: "3"),
            MockData(title: "4", name: "4"),
        ],
    ]
}
