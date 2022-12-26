//
//  NetworkModel.swift
//  H4XOR
//
//  Created by Boughdiri Dorsaf on 26/12/2022.
//

import Foundation


struct PostsModel: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
       return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
