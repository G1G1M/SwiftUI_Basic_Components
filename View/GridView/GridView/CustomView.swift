import SwiftUI

struct GridItemView: View {
    let item: GridItemModel
    
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100) // 기존 width, height 반영
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(item.title)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.black)
        }
        .padding(10)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

#Preview {
    GridItemView(item: GridItemModel(title: "1", imageName: "1"))
}
