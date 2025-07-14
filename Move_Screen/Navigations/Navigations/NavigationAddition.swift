import SwiftUI

struct NavigationAddition: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Button("다음") {
                    path.append("First") // ✅ push
                }
                
                Button("뒤로가기") {
                    path.removeLast() // ✅ pop
                }
                
                Button("목록 처음으로") {
                    path.removeLast(path.count) // ✅ reset
                }
            }
            .navigationDestination(for: String.self) { value in
                switch value {
                case "First":
                    FirstView(path: $path)
                case "Second":
                    SecondView(path: $path)
                default:
                    Text("잘못된 목적지")
                }
            }
            .navigationTitle("기본 화면")
        }
    }
}

#Preview {
    NavigationAddition(path: NavigationPath())
}
