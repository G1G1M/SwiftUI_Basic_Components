//
//  ContentView.swift
//  GridView
//
//  Created by KIM JIWON on 7/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 10) {
            GridRow { // 첫 번째 열
                Text("이름").frame(width: 80, alignment: .leading)
                Text("나이").frame(width: 50, alignment: .center)
                Text("소속그룹").frame(width: 100, alignment: .trailing)
            }
            .background(.gray.opacity(0.3)) // 배경색 추가
            
            GridRow { // 두 번째 열
                Text("팜하니").frame(width: 80, alignment: .leading)
                Text("22").frame(width: 50, alignment: .center)
                Text("뉴진스").frame(width: 100, alignment: .trailing)
            }
            
            GridRow { // 세 번째 열
                Text("킴민지")
                Text("22")
                Text("뉴진스")
            }
            .overlay(Rectangle().stroke(.gray, lineWidth: 1)) // 테두리 추가
        }
        
    }
}

#Preview {
    ContentView()
}
