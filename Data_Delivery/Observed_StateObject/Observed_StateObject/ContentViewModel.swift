import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var count = 0
    
    func increase() {
        count += 1
    }
    
    func decrease() {
        count -= 1
    }
}
