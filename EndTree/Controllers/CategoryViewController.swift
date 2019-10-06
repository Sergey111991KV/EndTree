 //
//  CategoryViewController.swift
//  EndTree
//
//  Created by Сергей Косилов on 04.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit
 

class CategoryViewController: UIViewController {
    
    var delegate: MenuToggleDelegate?
    
    @IBOutlet weak var tableCategory: UITableView!
    
    var arrayCategory = ["Классическая ель", "Ель в снегу", "Ель в инее", "Ель в снегу со встроенными лампочками", "Ель в инее со встроенными лампочками", "Эксклюзивная Ель", "Новогодние композиции"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTitleImage()
        createButtonItem()
        
        tableCategory.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.reuseId)
        tableCategory.separatorStyle = .none
        
    }
    
    func createTitleImage() {
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: navigationController?.view.frame.width ?? 0, height: 500))
        imageView.contentMode = .scaleAspectFit
        let image = #imageLiteral(resourceName: "лог1 ")
        imageView.image = image
        
        self.navigationItem.titleView = imageView
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.layoutIfNeeded()
        
    }
    
    func createButtonItem(){
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(menuOpenClose))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "      ", style: .plain, target: self, action: nil)
       
    }
    
    @objc private func menuOpenClose() {
        delegate?.toggleMenu()
    }
    
    
    
 }

 
 
 extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = self.view.bounds.height / CGFloat(arrayCategory.count + 5)
        return height
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCategory.count + 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableCategory.dequeueReusableCell(withIdentifier: CategoryTableViewCell.reuseId, for: indexPath) as! CategoryTableViewCell
        switch indexPath.row {
        case 0:
            cell.labelCategoryTree.text = "Каталог"
             cell.labelCategoryTree.font = UIFont(name: "Palatino", size: 30)
            
        case arrayCategory.count + 1:
            cell.labelCategoryTree.text = "❤︎"
             cell.labelCategoryTree.font = UIFont(name: "Palatino", size: 25)
            
        default:
            cell.labelCategoryTree.text = arrayCategory[indexPath.row - 1]
            cell.labelCategoryTree.font = UIFont(name: "Palatino", size: 25)
            cell.labelCategoryTree.numberOfLines = 0
            
        }
        
        
        cell.labelCategoryTree.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        
        cell.labelCategoryTree.textAlignment = .center
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Carousel", sender: self)
        self.remove()
    }
    
 }
