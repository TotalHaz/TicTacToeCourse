//
//  GameBoardView.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import SwiftUI

struct GameBoardView: View {
    let board: Board
    let winningCells: [CellCoordinate]
    let onCellTap: (Int, Int) -> ()
    
    
    var body: some View {
        VStack(spacing: GameConstants.boardSpacing) {
            ForEach(0..<GameConstants.boardSize, id: \.self) { row in
                HStack(spacing: GameConstants.boardSpacing) {
                    ForEach(0..<GameConstants.boardSize, id: \.self) { col in
                        let coord = CellCoordinate(row:row, col:col)
                        CellView(
                            state: board[row][col],
                            isWinningCell: winningCells.contains(coord)
                        )
                        .button(.press) {
                            withAnimation(.spring) {
                                onCellTap(row, col)
                            }
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    GameBoardView(board: .empty, winningCells: .init()) {_, _ in}
        .infinityFrame()
        .padding()
        .background(Color.appTheme.viewBackground)
}
