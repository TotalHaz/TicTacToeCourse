//
//  GameSetUpLiveStore.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 01/11/2025.
//

import Foundation
import Combine

@MainActor
final class GameSetUpLiveStore: ObservableObject {
    @Published var player1: PlayerProfile = .defaultPlayer1
    @Published var player2: PlayerProfile = .defaultPlayer2
    @Published var selectedDifficulty: Difficulty = .medium
    @Published var selectedFirstTurn: FirstTurn = .random
}
