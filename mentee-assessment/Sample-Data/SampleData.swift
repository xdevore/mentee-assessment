//
//  SampleData.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/27/24.
// sample data to test feed screen project

import Foundation

struct SampleData {
    
    // creating users with custom uuids
    static let jasonUser: User = {
        guard let userUUID = UUID(uuidString: "cabf5e02-d97b-4c57-a411-b2dfe99d257e") else {
            fatalError("Invalid UUID string")
        }
        let userPokeModel = PokeModel(currentUserId: userUUID)
        return User(id: userUUID, name: "Jason", profileImageName: "jason-profile", pokeModel: userPokeModel)
    }()
    
    // user who is currently using the application
    static let currentUser: User = {
        guard let userUUID = UUID(uuidString: "135b4f2a-5aff-46b8-a7d7-701b16465172") else {
            fatalError("Invalid UUID string")
        }
        let userPokeModel = PokeModel(currentUserId: userUUID)
        return User(id: userUUID, name: "Xavier", profileImageName: "xavier-profile", pokeModel: userPokeModel)
    }()
    
    // creating users with random uuids
    static let LinsieUser: User = {
        let userUUID = UUID()
        let userPokeModel = PokeModel(currentUserId: userUUID)
        return User(id: userUUID, name: "Linsie", profileImageName: "linsie-profile", pokeModel: userPokeModel)
    }()
    
    static let MarvinUser: User = {
        let userUUID = UUID()
        let userPokeModel = PokeModel(currentUserId: userUUID)
        return User(id: userUUID, name: "Marvin", profileImageName: "marvin-profile", pokeModel: userPokeModel)
    }()

    // compiling users list
    static let users: [User] = [
        jasonUser,
        LinsieUser,
        MarvinUser
    ]
    
    // creating user who has posted
    static let KyuUser: User = {
        guard let userUUID = UUID(uuidString: "81b1c320-5c53-49e5-889d-97258af9aef5") else {
            fatalError("Invalid UUID string")
        }
        let userPokeModel = PokeModel(currentUserId: userUUID)
        return User(id: userUUID, name: "Kyu", profileImageName: "kyu-profile", pokeModel: userPokeModel)
    }()

    // compiling uploads list
    static let uploads: [Upload] = [
        Upload(id: UUID(), user: KyuUser, uploadedImageName: "kyu-upload", uploadTime: Date(), reactions: 2, reactionIds: [currentUser.id, jasonUser.id])
    ]
    
}
