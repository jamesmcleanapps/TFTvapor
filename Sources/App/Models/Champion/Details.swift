//
//  Details.swift
//  App
//
//  Created by James Mclean on 08/06/2020.
//

import Foundation
import Vapor



struct Details: Codable {
    var main: String
    var benefit1: String?
    var benefit2: String?
    var benefit3: String?
    var benefit4: String?
}

extension Details: Content {}
