//
//  DocumentsRepoMock.swift
//  iOS-TaskTests
//
//  Created by huda elhady on 08/04/2021.
//

import Foundation
@testable import iOS_Task

class DocumentsRepoMock: BaseRepoMock, DocumentsRepo {
    var documentsInfoSuccess: DocumentsParentEntity!
    
    func searchDocuments(searchKeyWord: String, completionHandler: @escaping (Result<DocumentsParentEntity, NetworkError>) -> Void) {
        shouldSuccess ? completionHandler(.success(documentsInfoSuccess)) : completionHandler(.failure(failReponse))
    }
}
