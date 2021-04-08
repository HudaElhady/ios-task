//
//  IsbnListViewController.swift
//  iOS-Task
//
//  Created by huda elhady on 08/04/2021.
//

import UIKit

class IsbnListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var isbnsArray = [ISBN]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
    }
    
    func updateDataSource(isbnsArray: [ISBN]) {
        self.isbnsArray = isbnsArray
    }
    
}

extension IsbnListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isbnsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: IsbnTabelCell.identifier, for: indexPath) as? IsbnTabelCell {
            cell.configure(isbn: isbnsArray[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

}
