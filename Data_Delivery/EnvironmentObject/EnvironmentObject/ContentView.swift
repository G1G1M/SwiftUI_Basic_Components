import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var text: String = "초기값입니다."
    
    func changeValue(sending textchange: String){
        self.text = textchange
    }
}

struct ContentView1: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.text)
            ChildView2()
        }
        .environmentObject(viewModel)
    }
}

struct ChildView2: View {
    @EnvironmentObject private var viewModel: ContentViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("ChildView2: \(viewModel.text)")
            Button("Change Name") {
                viewModel.changeValue(sending: "ChildView2에서 값 바꿈")
            }

            ChildView3()
        }
        .background(Color.yellow.opacity(0.2))
    }
}

struct ChildView3: View {
    // 최상위 뷰에서 .environmentObject(viewModel) 주입했으므로, childView2에서 주입 안해도 됨
    @EnvironmentObject private var viewModel: ContentViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("ChildView3: \(viewModel.text)")
            Button("Change Name") {
                viewModel.changeValue(sending: "ChildView3에서 값 바꿈")
            }
        }
        .background(Color.green.opacity(0.2))
    }
}

#Preview{
    ContentView1()
}
