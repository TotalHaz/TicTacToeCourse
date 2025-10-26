//
//  PlayerName.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 26/10/2025.
//

import Foundation

enum PlayerName {
    case player1
    case player2
    case ai
}

extension PlayerName: CustomStringConvertible {
    var description: String {
        switch self {
        case .player1:
            return "Player 1"
        case .player2:
            return "Player 2"
        case .ai:
            return "AI"
        }
    }
    
}
