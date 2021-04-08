//
//  StoryBoardsIDs.swift
//  iOS-Task
//
//  Created by huda elhady on 08/04/2021.
//

import Foundation

enum StoryBoardsIDs: String {
    case main = "Main"
    
    var id: String {
        return self.rawValue
    }
}

enum ViewControllersIDs: String {
    case documentDetailsVC = "DocumentDetailsViewController"
    
    var id: String {
        return self.rawValue
    }
}
