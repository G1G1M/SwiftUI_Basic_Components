import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            
            HStack {
                Button("PLUS") {
                    viewModel.increase()
                }
                Button("MINUS") {
                    viewModel.decrease()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
