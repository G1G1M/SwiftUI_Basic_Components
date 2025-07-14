import SwiftUI

struct GridView: View {
    let columns = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)] // 2열 그리드
    
    var body: some View {
        NavigationView {
            VStack {
                Text("PARD")
                    .font(.system(size: 25, weight: .bold))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(GridItemModel.sampleData) { item in GridItemView(item: item)}
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Grid Example")
//            .navigationBarHidden(true)
        }
    }
}

#Preview {
    GridView()
}
