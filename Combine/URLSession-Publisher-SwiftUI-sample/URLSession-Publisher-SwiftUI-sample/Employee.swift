//
//  File.swift
//  URLSession-Publisher-SwiftUI-sample
//
//  Created by ogasawara_dev on 2020/04/22.
//  Copyright © 2020 ogasawara_dev. All rights reserved.
//

import Foundation

struct Employee: Codable {
    var arguments: Args

    enum CodingKeys: String, CodingKey {
        case arguments = "args"
    }

    struct Args: Codable {
        var name: String
    }
}
