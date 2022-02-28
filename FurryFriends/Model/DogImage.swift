//
//  DogImage.swift
//  FurryFriends
//
//  Created by Leo Lu on 2022-02-28.
//

import Foundation

struct DogImage: Decodable, Hashable, Encodable {
    let id = UUID()
    let message: String
    let status: String
}
