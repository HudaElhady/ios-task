//
//  DocumentsViewController.swift
//  iOS-Task
//
//  Created by huda elhady on 06/04/2021.
//

import UIKit

class DocumentsViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var activityLoader: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: DocumentsViewModel!
        private var documentslist = [Document]()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DocumentsViewModel()
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        initObservables()
        searchBar.backgroundImage = UIImage()
    }
    
    func initObservables() {
        viewModel.isLoading.bindAndFire { (isLoading) in
            if isLoading { self.activityLoader.startSpinner()} else { self.activityLoader.stopSpinner()}
        }
        viewModel.documents.bind { [weak self](documents) in
            self?.documentslist = documents
            self?.tableView.reloadData()
            self?.tableView.keyboardDismissMode = .onDrag
        }
        
        viewModel.errorMessage.bind { errorMessage in
            self.alert(message: errorMessage, actions: [("OK", .cancel)])
        }
    }


}

extension DocumentsViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return documentslist.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: DocumentTableCell.identifier, for: indexPath) as? DocumentTableCell {
            cell.configure(document: documentslist[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(DocumentDetailsViewController.create(document: documentslist[indexPath.row])!, animated: true)
    }

}


extension DocumentsViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
        performSearch(searchText: searchBar.text ?? "")
    }
    
    func performSearch(searchText: String) {
        viewModel.search(by: searchText)
    }
}

