//
//  ContentView.swift
//  TabView
//
//  Created by KIM JIWON on 7/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: MyTabView()){
                Text("MyTabView")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ContentView()
}
