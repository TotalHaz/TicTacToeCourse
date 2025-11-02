//
//  GameError.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import Foundation

enum GameError: Error {
    case invalidMove(row: Int, col: Int)
    case gameNotInProgress
    case botMoveFailure
    case invalidGameState
    
}

extension GameError: LocalizedError {
    var errorDescription: String? {
        switch self {
            case .invalidMove(row: let row, col: let col):
            "Invalid move at (\(row), \(col))"
        case .gameNotInProgress:
             "Game is not in progress"
        case .botMoveFailure:
             "Bot Failed to make a move"
        case .invalidGameState:
             "Invalid game state"
        }
    }
}
