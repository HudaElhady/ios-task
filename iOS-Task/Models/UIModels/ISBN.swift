//
//  ISBN.swift
//  iOS-Task
//
//  Created by huda elhady on 08/04/2021.
//

import Foundation

struct ISBN : Codable {
    var number : String
    var imageUrl : String
    
    init(number: String) {
        self.number = number
        self.imageUrl = Constants.coverBaseUrl + Constants.isbnApi + number + "-M.jpg"
    }
}
