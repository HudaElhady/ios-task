//
//  DocumentDetailsViewController.swift
//  iOS-Task
//
//  Created by huda elhady on 08/04/2021.
//

import UIKit

class DocumentDetailsViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    private var document: Document!
    private let isbnSegue = "isbnSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDocumentData(title:document?.title ?? "", authorName: document?.authorName ?? "")
    }
    
    func setDocumentData(title: String, authorName: String) {
        titleLabel.text = title
        authorLabel.text = authorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == isbnSegue, let isbnVC = segue.destination as? IsbnListViewController {
            isbnVC.updateDataSource(isbnsArray: document?.isbnList ?? [])
        }
    }
    
    static func create(document: Document) -> DocumentDetailsViewController? {
        if let vc = UIStoryboard(name: StoryBoardsIDs.main.id, bundle: nil).instantiateViewController(withIdentifier: ViewControllersIDs.documentDetailsVC.id) as? DocumentDetailsViewController {
            vc.document = document
            return vc
        }
        return nil
    }
    
}
