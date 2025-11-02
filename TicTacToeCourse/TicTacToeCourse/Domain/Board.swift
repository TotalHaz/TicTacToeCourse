//
//  Board.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import Foundation

typealias Board = [[CellState]]

extension Board {
    static var empty: Self {
        .init(repeating: .init(repeating: .empty, count: GameConstants.boardSize), count: GameConstants.boardSize)
    }
}
