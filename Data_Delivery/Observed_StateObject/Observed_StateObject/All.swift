import SwiftUI

// 1. ViewModel
class CompareAllMyViewModel: ObservableObject {
    @Published var count: Int = 0
    func increment() { count += 1 }
}

// 2. 부모 View
struct CompareAllParentView: View {
    @State private var count = 0
    @ObservedObject private var viewModel = CompareAllMyViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Button { count += 1 } label: {
                Text("🟠 State (Parent): \(count)")
            }
            BindingMyView(count: $count)
            ObservedObjectMyView()
            ObservedObjectMyView2(viewModel: viewModel)
            StateObjectMyView()
        }
        .padding()
    }
}

// 3. 자식 View들
struct BindingMyView: View {
    @Binding var count: Int
    var body: some View {
        Button { count += 1 } label: {
            Text("🟢 Binding (Child): \(count)")
        }
    }
}

struct ObservedObjectMyView: View {
    @ObservedObject var viewModel = CompareAllMyViewModel()
    var body: some View {
        Button { viewModel.increment() } label: {
            Text("🔵 ObservedObject: \(viewModel.count)")
        }
    }
}

struct ObservedObjectMyView2: View {
    @ObservedObject var viewModel: CompareAllMyViewModel
    var body: some View {
        Button { viewModel.increment() } label: {
            Text("🔵 ObservedObject: \(viewModel.count)")
        }
    }
}

struct StateObjectMyView: View {
    @StateObject private var viewModel = CompareAllMyViewModel()
    var body: some View {
        Button { viewModel.increment() } label: {
            Text("🟣 StateObject: \(viewModel.count)")
        }
    }
}

// 4. Preview
#Preview {
    CompareAllParentView()
}
