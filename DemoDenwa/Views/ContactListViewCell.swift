//
//  ContackListViewCell.swift
//  DemoDenwa
//
//  Created by muu van duy on 2018/08/01.
//  Copyright © 2018 javimuu. All rights reserved.
//

import UIKit

class ContactListViewCell: UITableViewCell {
    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "名前："
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let nameValueLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(nameLabel)
        addSubview(nameValueLabel)
        
        // nameLabel Constraints
        nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        // nameValueLabel Constraints
        nameValueLabel.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 10).isActive = true
        nameValueLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        nameValueLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameValueLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
}

