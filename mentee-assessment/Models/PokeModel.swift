//
//  PokeModel.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/28/24.
// created to track the pokes of a user (with currentUserId). the uuids of other users that the current user has poked will be in the pokedUsers set

import SwiftUI
import Combine

class PokeModel: ObservableObject {
    
    @Published var pokedUsers: Set<UUID> = []
    let currentUserId: UUID

    init(currentUserId: UUID) {
        self.currentUserId = currentUserId
    }

    func togglePoke(for userId: UUID) {
        if pokedUsers.contains(userId) {
            pokedUsers.remove(userId)
        } else {
            pokedUsers.insert(userId)
        }
    }

    func isUserPoked(userId: UUID) -> Bool {
        return pokedUsers.contains(userId)
    }
}
