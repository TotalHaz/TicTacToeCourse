//
//  AppModeLiveStore.swift
//  TicTacToe-TheOne-Course
//
//  Created by Raul Gutierrez Niubo on 9/18/25.
//

import Foundation
import Combine


final class AppModeLiveStore: ObservableObject {
  @Published private(set) var appMode: AppMode = .gameSetup
  
  func goGameMode() {
    appMode = .game
  }
  
  func goSetupMode() {
    appMode = .gameSetup
  }
}
