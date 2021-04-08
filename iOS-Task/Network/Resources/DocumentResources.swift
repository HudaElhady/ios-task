//
//  DocumentResources.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import Foundation

struct DocumentResources {
    
    static func searchDocuments(keyword: String) -> Resource<DocumentsParentEntity> {
        let urlString = "http://openlibrary.org/search.json?q=\(keyword)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
       return Resource<DocumentsParentEntity>(get: URL(string: urlString)!)
    }
}
