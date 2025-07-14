import SwiftUI

struct FirstView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 20) {
            Button("다음") {
                path.append("Second") // ✅ push
            }

            Button("뒤로가기") {
                path.removeLast() // ✅ pop
            }

            Button("목록 처음으로") {
                path.removeLast(path.count) // ✅ reset
            }
        }
        .navigationTitle("1st 화면")
    }
}
