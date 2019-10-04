//
//  CategoryTableViewCell.swift
//  EndTree
//
//  Created by Сергей Косилов on 05.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    static let reuseId = "CategoryTableViewCell"
    
    
    
    var labelCategoryTree: UILabel = {
        var label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        addSubview(labelCategoryTree)
        self.backgroundColor = UIColor.clear
        labelCategoryTree.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        labelCategoryTree.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        labelCategoryTree.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        labelCategoryTree.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
