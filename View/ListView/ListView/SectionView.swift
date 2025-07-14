import SwiftUI

struct Task2: Identifiable {
    let id = UUID()
    let title: String
}

struct SectionView: View {
    let tasks = [
        Task2(title: "운동하기"),
        Task2(title: "책 읽기"),
        Task2(title: "코딩 연습하기"),
        Task2(title: "프로젝트 진행하기")
    ]
    
    var body: some View{
        List {
            Section(header: Text("오늘 할 일"), footer: Text("오늘 할 일 끝")){
                Text(tasks[0].title)
                Text(tasks[1].title)
            }
            
            Section(header: Text("내일 할 일")
                .font(Font.system(size: 20))
                .foregroundStyle(.yellow)
                    
                , footer: Text("내일 할 일 끝")
                .foregroundStyle(.blue)
            ){
                Text(tasks[2].title)
                Text(tasks[3].title)
            }
        }
        .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)) // 각 row 여백
        
        .listRowSeparator(.hidden) // 구분선 제거
        
        .scrollContentBackground(.hidden) // 기본 배경 제거
        .background(Color.gray.opacity(0.2)) // 배경색 설정
        
        .listSectionSpacing(20) // Section 간 간격
    }
}

#Preview {
    SectionView()
}
