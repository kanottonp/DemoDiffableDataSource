//
//  ViewController.swift
//  DemoDiffableDataSource
//
//  Created by Athipat.n on 24/4/2566 BE.
//

import UIKit

struct Data: Hashable {
    let id: String
    let name: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Data, rhs: Data) -> Bool {
        return lhs.name == rhs.name
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var tableView: ExampleTable!
    
    private lazy var datasource = UITableViewDiffableDataSource<Int, Data>(tableView: tableView) { tableView, indexPath, item in
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ExampleCell.self)) as? ExampleCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = "id: \(item.id) name: \(item.name)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ExampleCell", bundle: nil), forCellReuseIdentifier: String(describing: ExampleCell.self))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        var snapshot = NSDiffableDataSourceSnapshot<Int, Data>()
        snapshot.appendSections([0])
        snapshot.appendItems([
            .init(id: "0", name: "zero"),
            .init(id: "1", name: "one"),
            .init(id: "2", name: "two")
        ])
        datasource.apply(snapshot)
    }
    
    @IBAction func tapGo(_ sender: Any) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Data>()
        snapshot.appendSections([0])
        snapshot.appendItems([
            .init(id: "0", name: "zero"),
            .init(id: "1", name: "one one"),
            .init(id: "3", name: "three")
        ])
        datasource.apply(snapshot)
    }
    

}

