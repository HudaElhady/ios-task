//
//  DocumentsViewModel.swift
//  iOS-Task
//
//  Created by huda elhady on 06/04/2021.
//

import Foundation

class DocumentsViewModel: BaseViewModel {

    private var documentsRepo: DocumentsRepo
    var documents:Dynamic<[Document]> = Dynamic([Document]())
    var errorMessage: Dynamic<String> = Dynamic("")
    
    init(documentsRepo: DocumentsRepo = DocumentsRepoImpl()) {
        self.documentsRepo = documentsRepo
        super.init(isLoading: false)
    }

    func search(by keyword: String) {
        startLoading()
        documentsRepo.searchDocuments(searchKeyWord: keyword) { [weak self] (result) in
            self?.stopLoading()
            switch result {
            case .success(let response):
                if let docs = response.docs {
                    self?.documents.value = docs.map{Document.toDocument(model: $0)}
                }
            case .failure(let error):
                self?.errorMessage.value = error.errorMessage
            }
        }
    }

}

