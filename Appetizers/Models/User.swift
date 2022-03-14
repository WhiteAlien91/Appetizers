//
//  User.swift
//  Appetizers
//
//  Created by Dmitry Sechkarenko on 13.03.2022.
//

import Foundation

struct User: Codable {
    var firstName           = ""
    var lastName            = ""
    var email               = ""
    var birthdate           = Date()
    var extraNapkins        = false
    var frequentRefills     = false
}
