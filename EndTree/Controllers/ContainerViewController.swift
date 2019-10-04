//
//  ContainerViewController.swift
//  EndTree
//
//  Created by Сергей Косилов on 04.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    var controller: UIViewController!
    var menuViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configureViewController()
    }
    
    func configureViewController() {
     
        let categoryViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! CategoryViewController
        let navController = UINavigationController(rootViewController: categoryViewController)
        //   categoryViewController.delegate = self
        controller = navController
        controller.title = "aaa"
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil{
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            print("Добавили меню")
        }
    }
    
    
}
