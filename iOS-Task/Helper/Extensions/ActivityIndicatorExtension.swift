//
//  ActivityIndicatorExtension.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import UIKit

extension UIActivityIndicatorView {
    func startSpinner() {
        startAnimating()
        isHidden = false
        isUserInteractionEnabled = false
    }

    func stopSpinner() {
        stopAnimating()
        isHidden = true
        isUserInteractionEnabled = true
    }
}

