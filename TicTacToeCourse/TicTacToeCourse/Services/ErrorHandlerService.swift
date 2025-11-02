//
//  ErrorHandlerService.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 02/11/2025.
//

import Foundation

protocol ErrorHandlerProtocol {
    func handle(_ error: GameError)
    func logError(_ error: GameError)
}

final class ErrorHandlerService: ErrorHandlerProtocol {
    func handle(_ error: GameError) {
        logError(error)
        // do something with the error
        // could add user notification, crash reporting etc.

    }
    
    func logError(_ error: GameError) {
        #if DEBUG
        print(" 🕹️ Game Error: \(error.errorDescription ?? "Unknown Error")")
        #endif
        // in production, send to analytics/crash reporting
        
    }
}


