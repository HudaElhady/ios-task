//
//  BaseViewModel.swift
//  iOS-Task
//
//  Created by huda elhady on 06/04/2021.
//

import Foundation

class BaseViewModel {

    var isLoading: Dynamic<Bool> = Dynamic(false)

    init(isLoading: Bool) {
        self.isLoading.value = isLoading
    }

    func startLoading() {
        isLoading.value = true
    }

    func stopLoading() {
        isLoading.value = false
    }

}
