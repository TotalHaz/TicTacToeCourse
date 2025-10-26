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
}
