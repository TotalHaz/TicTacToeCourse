//
//  Container+Registration.swift
//  TicTacToeCourse
//
//  Created by Harry Weaver on 25/10/2025.
//

import Factory

extension Container {
    var appModeStore: Factory<AppModeLiveStore> {
        self { MainActor.assumeIsolated { AppModeLiveStore() } }.singleton
    }
    var gameSetupStore: Factory<GameSetUpLiveStore> {
        self { MainActor.assumeIsolated { GameSetUpLiveStore() } }.singleton
    }
    var gameStore: Factory<GameStore> {
        self { MainActor.assumeIsolated { GameLiveStore() } }.singleton
    }
    var boardLogicService: Factory<BoardLogicServiceProtocol> {
        self { MainActor.assumeIsolated { BoardLogicService() }}.singleton
    }
    var botEngineService: Factory<BotEngineService> {
        self { MainActor.assumeIsolated { BotEngineService() }}.singleton
    }
    var errorHandlerService: Factory<ErrorHandlerService> {
        self { MainActor.assumeIsolated { ErrorHandlerService() }}.singleton
    }
    var analyticsService: Factory<AnalyticsProtocol> {
        self { MainActor.assumeIsolated { AnalyticsService() }}.singleton
    }
}
