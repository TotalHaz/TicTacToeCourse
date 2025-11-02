//
//  GameState.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import Foundation

enum GameState: Equatable {
    case playing
    case won(Player)
    case tied
    
    var isGameover: Bool {
        switch self {
        case .won, .tied: true
        case .playing: false
        }
    }
    
    var isTied: Bool {
        self == .tied
    }
    
    var winningPlayer: Player? {
        switch self {
        case .won(let player): player
        case .tied, .playing: nil
        }
    }
    
    
}
