//
//  PlayerType.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 26/10/2025.
//

import SwiftUI

enum PlayerType  {
    case human
    case bot
}

extension PlayerType {
    var isHuman: Bool {
        self == .human
    }
    var isBot: Bool {
        self == .bot
    }
}

