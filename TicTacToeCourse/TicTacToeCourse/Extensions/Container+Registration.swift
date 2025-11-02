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
    
    var botEngineService: Factory<AnalyticsProtocol> {
        self { MainActor.assumeIsolated { AnalyticsService() }}.singleton
    }
    
    
    var errorHandlerService: Factory<BotEngineService> {
        self { MainActor.assumeIsolated { BotEngineService() }}.singleton
    }
    var analyticsService: Factory<AnalyticsProtocol> {
        self { MainActor.assumeIsolated { AnalyticsService() }}.singleton
    }
}
