//
//  Document.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import Foundation

struct Document : Codable {
    var title : String
    var authorName : String
    var isbnList:[ISBN]
    
    
    static func toDocument(model: DocumentModel) -> Document {
        var authorName = ""
        if let authorNames = model.authorName, authorNames.count > 0 {
            authorName = authorNames[0]
        }
        var isbnStings = [String]()
        
        if let isbns = model.isbn, isbns.count > 0 {
            isbnStings = isbns.count >= 5 ? Array(isbns[0...4]) : isbns
        }
        return Document(title: model.title ?? "", authorName: authorName, isbnList: isbnStings.map{ISBN(number: $0)})
    }
}
