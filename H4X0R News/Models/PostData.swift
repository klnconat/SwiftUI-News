//
//  PostData.swift
//  H4X0R News
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    //computed property
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
