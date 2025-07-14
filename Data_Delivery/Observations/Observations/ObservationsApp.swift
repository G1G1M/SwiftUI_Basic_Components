//
//  ObservationsApp.swift
//  Observations
//
//  Created by KIM JIWON on 7/14/25.
//

import SwiftUI

@main
struct ObservationsApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView(model: ProfileModel())
        }
    }
}
