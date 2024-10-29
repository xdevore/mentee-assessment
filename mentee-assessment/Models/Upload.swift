//
//  Upload.swift
//  mentee-assessment
//
//  Created by Xavier DeVore on 10/27/24.
//

import Foundation

struct Upload {
    let id: UUID
    let user: User
    let uploadedImageName: String
    let uploadTime: Date
    let reactions: Int
    let reactionIds: [UUID]
}
