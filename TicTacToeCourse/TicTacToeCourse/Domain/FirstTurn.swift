//
//  Difficulty.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 28/10/2025.
//

import Foundation

enum FirstTurn: String, CaseIterable {
    case you
    case opponent
    case random
}

extension FirstTurn: CustomStringConvertible {
    
    var description: String {
        rawValue.capitalized
    }
    
}
