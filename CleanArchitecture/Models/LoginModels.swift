//
//  LoginModels.swift
//  CleanArchitecture
//
//  Created by Dounia BELANNAB on 19/03/2018.
//  Copyright (c) 2018 Dounia BELANNAB. All rights reserved.
//

import UIKit
struct LoginModel {
    struct Fetch {
        struct Request
        {
            var email: String?
            var password: String?
        }
        struct Response
        {
            var user: LoggedUser?
            var state: Bool!
            var error: String?
        }
        struct ViewModel
        {
            var firstName: String?
            var lastName: String?
            var error: String?
        }
    }
}



//*******************Done**********************//
struct LoggedUser: Codable {
    var userId: Int!
    var firstName: String!
    var lastName: String!
    var accessToken: String!
    var refreshToken: String!
}
