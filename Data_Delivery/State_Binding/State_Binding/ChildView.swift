//
//  ContentView.swift
//  State_Binding
//
//  Created by KIM JIWON on 7/14/25.
//

import SwiftUI

struct ChildView: View {
    @Binding var isActivated: Bool
    
    var body: some View {
        VStack {
            Text("ChildView : \(isActivated)")
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
        }
    }
}


