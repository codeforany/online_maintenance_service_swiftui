//
//  MaintenanceServiceSwiftUIApp.swift
//  MaintenanceServiceSwiftUI
//
//  Created by CodeForAny on 06/08/24.
//

import SwiftUI

@main
struct MaintenanceServiceSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
        
            NavigationView(content: {
                SignInWithEmailScreen()
            })
            .navigationViewStyle(.stack)
        }
    }
}
