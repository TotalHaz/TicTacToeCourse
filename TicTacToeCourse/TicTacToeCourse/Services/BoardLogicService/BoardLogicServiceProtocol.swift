//
//  BoardLogicService.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import Foundation

protocol BoardLogicServiceProtocol {
    func validateMove(row: Int, col: Int, board: Board,gameState: GameState) throws
    func checkWin(in board: Board, for cellSymbol: CellState) -> [CellCoordinate]?
    func isBoardFull(_ board: Board) -> Bool
}



