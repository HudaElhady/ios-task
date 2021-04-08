//
//  BaseRepoMock.swift
//  iOS-TaskTests
//
//  Created by huda elhady on 08/04/2021.
//

import Foundation

@testable import iOS_Task

class BaseRepoMock {
    var shouldSuccess: Bool = false
    var failReponse: NetworkError!
}
