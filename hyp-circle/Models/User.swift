//
//  User.swift
//  hyp-circle
//
//  Created by Tim Casali on 12/12/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "All Balls", email: "test@email.com")
}
