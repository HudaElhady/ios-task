//
//  APIError.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import Foundation

enum NetworkError: Error {
    case badURL, requestFailed, unknown
    
    var errorMessage: String {
        switch self {
        case .badURL:
            return "Bad URL"
        case .requestFailed:
            return "Internet connection error"
        case .unknown:
            return "Unknown error"
        }
    }
    
}
