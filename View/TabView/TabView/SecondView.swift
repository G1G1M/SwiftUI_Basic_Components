import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea() // 배경색
            Text("두 번째 페이지")
        }
    }
}

#Preview {
    SecondView()
}
