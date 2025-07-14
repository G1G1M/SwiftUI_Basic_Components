import SwiftUI

struct NextView: View {
    var body: some View{
        VStack{
            Text("Next Page")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
        }
//        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NextView()
}
