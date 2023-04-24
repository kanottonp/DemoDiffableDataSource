//
//  ExampleTable.swift
//  DemoDiffableDataSource
//
//  Created by Athipat.n on 24/4/2566 BE.
//

import UIKit

class ExampleTable: UITableView {
    override func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) {
        print("ExampleTable insertRows: \(indexPaths.description)")
        super.insertRows(at: indexPaths, with: animation)
    }
    override func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) {
        print("ExampleTable deleteRows: \(indexPaths.description)")
        super.deleteRows(at: indexPaths, with: animation)
    }
    override func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) {
        print("ExampleTable insertSections: \(sections.description)")
        super.insertSections(sections, with: animation)
    }
    override func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) {
        print("ExampleTable deleteSections: \(sections.description)")
        super.deleteSections(sections, with: animation)
    }
    override func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) {
        print("ExampleTable reloadRows: \(indexPaths.description)")
        super.reloadRows(at: indexPaths, with: animation)
    }
    override func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) {
        print("ExampleTable reloadSections: \(sections.description)")
        super.reloadSections(sections, with: animation)
    }
    override func reloadData() {
        print("ExampleTable reloadData")
        super.reloadData()
    }
}
