//
//  DocumentsRepo.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import Foundation

protocol DocumentsRepo {
    func searchDocuments(searchKeyWord: String, completionHandler: @escaping (Result<DocumentsParentEntity,NetworkError>)->Void)
}

class DocumentsRepoImpl: DocumentsRepo {
    func searchDocuments(searchKeyWord: String, completionHandler: @escaping (Result<DocumentsParentEntity,NetworkError>)->Void) {
        URLSession.shared.load(DocumentResources.searchDocuments(keyword: searchKeyWord)) {response in
                switch response {
                case .success(let docs):
                    completionHandler(.success(docs))
                case .failure(let error):
                    completionHandler(.failure(error))
                }
        }
    }

}
