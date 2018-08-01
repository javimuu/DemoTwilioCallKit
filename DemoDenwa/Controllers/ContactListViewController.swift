//
//  ContactListViewController.swift
//  DemoDenwa
//
//  Created by muu van duy on 2018/08/01.
//  Copyright © 2018 javimuu. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {
    fileprivate let cellId = "cellId"
    fileprivate let dataSources = ["alice", "hanada"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset = .zero
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(ContactListViewCell.self, forCellReuseIdentifier: cellId)
        
        navigationItem.title = "Contacts"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSources.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: cellId) as? ContactListViewCell) ?? ContactListViewCell()
        cell.nameValueLabel.text = dataSources[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = dataSources[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: false)
        print(item)
        
        let alert = UIAlertController(title: item, message: "電話をかける？", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "電話する", style: .default, handler: { action in
            print("calling...")
        }))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: { action in
            print("canceled")
        }))
        present(alert, animated: false, completion: nil)
    }
}

