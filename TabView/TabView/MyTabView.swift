import SwiftUI

struct MyTabView: View {
    
    // TabView 스타일 커스텀(탭바 디자인 변경하기)
    init(){
        let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground() // ✅ 배경을 명확하게 설정
            appearance.backgroundColor = UIColor.systemGray6 // ✅ 탭바 배경색 변경
            appearance.stackedLayoutAppearance.normal.iconColor = UIColor.systemPink // ✅ 선택되지 않은 아이콘 색 변경
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemPink] // ✅ 선택되지 않은 아이콘 색 변경
        
        UITabBar.appearance().standardAppearance = appearance // 기본적인 탭바 스타일 설정
        UITabBar.appearance().scrollEdgeAppearance = appearance // 구분선 생김
    }
    
    @State private var selection = 0 // 설정하지 않을 시 첫 페이지 고정
    
    var body: some View {
        TabView(selection: $selection){
            FirstView()
                .tabItem{
                    Image(systemName: "arrow.up.circle")
                    Text("First")
                }
                .tag(0) // 화면별 고유 번호 지정
            
            SecondView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Second")
                }
                .tag(1) // 화면별 고유 번호 지정
            
            ThirdView()
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("third")
                }
                .tag(2) // 화면별 고유 번호 지정
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MyTabView()
}
