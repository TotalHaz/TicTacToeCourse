//
//  GameView.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel: GameViewModel = .init()
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GameView()
}
