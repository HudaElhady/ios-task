//
//  DocumentTableCell.swift
//  iOS-Task
//
//  Created by huda elhady on 07/04/2021.
//

import UIKit

class DocumentTableCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    static let identifier = "DocumentTableCell"

    func configure(document: Document) {
        titleLabel.text = document.title
        authorLabel.text = document.authorName
    }
}

