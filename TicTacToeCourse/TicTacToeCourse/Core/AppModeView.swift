//
//  ContentView.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 25/10/2025.
//

import SwiftUI

struct AppModeView: View {
    @StateObject private var viewModel = AppModeViewModel()
    var body: some View {
        Group{
            switch viewModel.appMode {
            case .gameSetup:
                GameSetupView()
            case .game:
                Text("Game")
            }
        }
        .animation(.easeIn, value: viewModel.appMode)
    }
}

#Preview {
    AppModeView()
}
