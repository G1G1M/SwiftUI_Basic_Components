import SwiftUI

struct ContentView: View {
    // 섹션별 배경색 (섹션 index로 접근)
    let sectionColors: [Color] = [.red, .orange, .green, .gray, .purple]

    var body: some View {
        NavigationView {
            List {
                // Section을 만드는 부분
                ForEach(0..<MockData.modeling.count, id: \.self) { sectionIndex in
                    Section(
                        header: Text("Section \(sectionIndex)")
                            .font(.title2)
                            .bold()
                            .padding()
                            .background(sectionColors[sectionIndex % sectionColors.count])
                            .foregroundColor(.white)
                            .cornerRadius(10),

                        footer: Text("End of Section \(sectionIndex)")
                            .foregroundColor(.gray)
                    ) {
                        // 각 Section에 들어갈 Row
                        ForEach(MockData.modeling[sectionIndex]) { item in
                            DemoRow(data: item) // 커스텀 셀
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle()) // iOS 17 이상은 .insetGrouped 가능
            .navigationTitle("SwiftUI List")
        }
    }
}

#Preview {
    ContentView()
}
