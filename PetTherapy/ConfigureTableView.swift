
import Foundation
import UIKit

extension ViewController {
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(GifTableViewCell.self, forCellReuseIdentifier: giphCellReuseIdentifier)

        //tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        //tableView.separatorInset = UIEdgeInsets.zero
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        //tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        
    }
}
