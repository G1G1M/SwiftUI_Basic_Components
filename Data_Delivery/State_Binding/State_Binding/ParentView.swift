//
//  ContentView.swift
//  State_Binding
//
//  Created by KIM JIWON on 7/14/25.
//

import SwiftUI

struct ParentView: View {
    @State private var isActivated = false
    
    var body: some View {
        VStack {
            Text("ParentView : \(isActivated)")
                .font(.system(size: 50))
            
            Text(isActivated ? "On" : "Off")
                .padding()
                .background(isActivated ? .green : .red)
                .foregroundStyle(.white)
                .cornerRadius(10)
            
            Button("Button") {
                isActivated.toggle() // toggle: bool값 뒤집는 함수
//                print("\(isActivated)")
            }
            Divider()
            ChildView(isActivated: $isActivated)
        }
    }
}

#Preview {
    ParentView()
}
