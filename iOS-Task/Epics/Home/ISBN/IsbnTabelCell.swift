//
//  IsbnTabelCell.swift
//  iOS-Task
//
//  Created by huda elhady on 08/04/2021.
//

import UIKit

class IsbnTabelCell: UITableViewCell {

    @IBOutlet weak var isbnNumberLabel: UILabel!
    @IBOutlet weak var isbnImageView: UIImageView!
    static let identifier = "IsbnTabelCell"

    func configure(isbn: ISBN) {
        isbnNumberLabel.text = isbn.number
        isbnImageView.load(url: URL(string: isbn.imageUrl)!)
    }
}

