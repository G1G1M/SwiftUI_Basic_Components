//
//  ContentView.swift
//  ScrollView
//
//  Created by KIM JIWON on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false){ // ✅ 1. ScrollView 추가
            VStack(spacing: 20) { // ✅ 3. ScrollView 내부에 VStack 배치
                Text("We are Newjeans! 우리는 뉴진스입니다!") // ✅ 4. ScrollView 내부 콘텐츠 구성
                    .frame(width: 200, height: 50) // ✅ 5. ScrollView 내부 콘텐츠 구성
                    .padding(5)
                    .background(.blue.opacity(0.3))
                    .cornerRadius(10)
                
                Rectangle() // ✅ 4. ScrollView 내부 콘텐츠 구성
                
                Image("new") // ✅ 4. ScrollView 내부 콘텐츠 구성
                    .resizable() // ✅ 5. ScrollView 내부 콘텐츠 구성
                    .aspectRatio(contentMode: .fit)
                
                Image("new") // ✅ 4. ScrollView 내부 콘텐츠 구성
                    .resizable() // ✅ 5. ScrollView 내부 콘텐츠 구성
                    .aspectRatio(contentMode: .fit)
                
                Image("new") // ✅ 4. ScrollView 내부 콘텐츠 구성
                    .resizable() // ✅ 5. ScrollView 내부 콘텐츠 구성
                    .aspectRatio(contentMode: .fit)
                
            }
            .frame(maxWidth: .infinity) // ✅ 3. ScrollView 내부에 VStack 배치
            
        }
        .frame(maxHeight: 500) // ✅ 2. ScrollView의 크기 & 위치 설정
//        .ignoresSafeArea() // ✅ 2. ScrollView의 크기 & 위치 설정
        .background(.yellow.opacity(0.5))
    }
}

// LazyStack은

#Preview {
    ContentView()
}
