import SwiftUI

struct SecondView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 20) {
            Button("다음") {
                path.append("Third") // ✅ push
            }

            Button("뒤로가기") {
                path.removeLast() // ✅ pop
            }

            Button("목록 처음으로") {
                path.removeLast(path.count) // ✅ reset
            }
        }
        .navigationTitle("2nd 화면")
    }
}
