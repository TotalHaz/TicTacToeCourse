//
//  Difficulty.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 28/10/2025.
//

import Foundation

enum Difficulty: String, CaseIterable {
    case easy
    case medium
    case hard
}

extension Difficulty: CustomStringConvertible {
    
    var description: String {
        rawValue.capitalized
    }
    
}
