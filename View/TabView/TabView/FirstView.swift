import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea() // 배경색
            Text("첫 번째 페이지")
        }
    }
}

#Preview {
    FirstView()
}
