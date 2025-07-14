//
//  ContentView.swift
//  NavigationView
//
//  Created by KIM JIWON on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NextView()) {
                    Text("화면 이동하기")
                        .navigationTitle("화면")
                        .padding()
                        .background(.orange)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
            }
//            .navigationBarHidden(true) // 네비게이션 바 숨기기
        }
    }
}

#Preview {
    ContentView()
}
