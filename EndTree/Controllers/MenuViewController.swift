//
//  MenuViewController.swift
//  EndTree
//
//  Created by Сергей Косилов on 04.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

     var tableView: UITableView!
   
    var profileController = ProfileViewController()
    
    
    override func viewDidLoad() {
            super.viewDidLoad()

           
           
            configureTableView()
        }
        
        
        func configureTableView() {
            tableView = UITableView()
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(MenuTableCell.self, forCellReuseIdentifier: MenuTableCell.reuseId)
            view.addSubview(tableView)
            tableView.frame = view.frame
            
            tableView.separatorStyle = .none
            tableView.rowHeight = 90
            tableView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        }

    }



    extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 4
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableCell.reuseId) as! MenuTableCell
            let menuModel = MenuModel(rawValue: indexPath.row)
            cell.iconImageView.image = menuModel?.image
            cell.myLabel.text = menuModel?.description
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let menuModel = MenuModel(rawValue: indexPath.row)
//            switch menuModel{
//            case .Contacts:
//               // delegate?.newControler(controller: profileController)
//                print("1")
//            case.Menu:
//              //  delegate?.newControler(controller: profileController)
//                print("2")
//         //   case .News:
//                 //  delegate?.newControler(controller: profileController)
//            //case .Profile:
//                //  delegate?.newControler(controller: profileController)
//            
//            case .none:
//                return
//            }
            
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        
    }
