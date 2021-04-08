//
//  DocumentsList.swift
//  iOS-TaskTests
//
//  Created by huda elhady on 08/04/2021.
//

import XCTest
@testable import iOS_Task

class LoginTests: XCTestCase {
    var viewModel: DocumentsViewModel!
    var documentsRepo: DocumentsRepoMock!
    
    override func setUpWithError() throws {
        
        documentsRepo = DocumentsRepoMock()
        viewModel = DocumentsViewModel(documentsRepo: documentsRepo)
    }

    override func tearDownWithError() throws {
        viewModel = nil
        documentsRepo = nil
    }
    
    func testSearchFailWithRequestFailedError() {
        //Given
        documentsRepo.shouldSuccess = false
        documentsRepo.failReponse = .requestFailed
        //When
        viewModel.search(by: "")
        //Then
        
        XCTAssertEqual(viewModel.errorMessage.value, "Internet connection error")
    }
    
    func testSearchFailWithBadURLError() {
        //Given
        documentsRepo.shouldSuccess = false
        documentsRepo.failReponse = .badURL
        //When
        viewModel.search(by: "")
        //Then
        
        XCTAssertEqual(viewModel.errorMessage.value, "Bad URL")
    }
    
    func testSearchFailWithUnknownErrorError() {
        //Given
        documentsRepo.shouldSuccess = false
        documentsRepo.failReponse = .unknown
        //When
        viewModel.search(by: "")
        //Then
        XCTAssertEqual(viewModel.errorMessage.value, "Unknown error")
    }
    
    func testSearchSucceeded(){
        //Given
        let documentModel = DocumentModel(title: "title", authorNameList: ["name1", "name2"], isbnList: ["1","2","3"])
        let documentsParentResponse = DocumentsParentEntity(docs: [documentModel], numFound: 1, start: 0)
        //When
        documentsRepo.shouldSuccess = true
        documentsRepo.documentsInfoSuccess = documentsParentResponse
        viewModel.search(by: "the lord of rings")
        //Then
        XCTAssertEqual(viewModel.documents.value.count, documentsParentResponse.docs?.count)
        XCTAssertEqual(viewModel.isLoading.value, false)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

