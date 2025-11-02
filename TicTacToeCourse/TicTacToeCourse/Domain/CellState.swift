//
//  CellState.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import SwiftUI

enum CellState {
    case empty
    case x
    case o
    
    var symbol: String {
        switch self {
        case .empty:
            return ""
        case .x:
            return "X"
        case .o:
            return "O"
        }
    }
    
    var color: Color {
        switch self {
        case .empty:  Color.clear
        case .x:      Color.appTheme.accent
        case .o:      Color.appTheme.alternateAccent
        }
    }
    
}
