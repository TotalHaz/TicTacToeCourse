//
//  TicTacToeCourseApp.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 25/10/2025.
//

import SwiftUI

@main
struct TicTacToeCourseApp: App {
    @AppStorage(UserDefaultKeys.isDarkmode) private var isDarkMode: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            AppModeView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
