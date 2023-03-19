//
//  userInfo.swift
//  NetworkingAPI
//
//  Created by Amr El-Fiqi on 19/03/2023.
//

import Foundation

struct userInfo: Codable {

        var userID: Int
        var id: Int
        var userInfoTitle: String
        var userInfoBody: String

        enum CodingKeys: String, CodingKey {
            case userID = "userId"
            case id = "id"
            case userInfoTitle = "title"
            case userInfoBody = "body"
        }
    }
