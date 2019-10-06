//
//  ContainerViewController.swift
//  EndTree
//
//  Created by Сергей Косилов on 04.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, MenuToggleDelegate {
  
    var controller: UIViewController!
    

    let profileViewController = UIStoryboard(name: "Profile", bundle: nil).instantiateInitialViewController() as! ProfileViewController
    
    let carouselViewController = CaruselViewController()
    
    var menuViewController: MenuViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCategoryViewController()
    }
    
    func configureCategoryViewController() {
        let categoryViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! CategoryViewController
        let navController = UINavigationController(rootViewController: categoryViewController)
        categoryViewController.delegate = self
        controller = navController
        
        view.addSubview(controller.view)

      addChild(controller)
      
        addChild(controller)
        controller.didMove(toParent: self)
    }
    
    func configureMenuViewController() {
        menuViewController = MenuViewController()
        addChild(menuViewController)
        view.insertSubview(menuViewController.view, at: 0)
        menuViewController.didMove(toParent: self)
        print("Добавили меню")
        
    }
    
  
    
     func showMenuViewController(shouldMove: Bool) {
            if shouldMove {
                // показываем menu
                UIView.animate(withDuration: 0.5,
                delay: 0,
                    usingSpringWithDamping: 0.8,
                    initialSpringVelocity: 0,
                    options: .curveEaseInOut,
                    animations: {
                     self.controller.view.frame.origin.x =  -self.controller.view.frame.width / 5
                        
                }) { (finished) in
                    
                }
            } else {
                // убираем menu
                UIView.animate(withDuration: 0.5,
                delay: 0,
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0,
                options: .curveEaseInOut,
                animations: {
                 self.controller.view.frame.origin.x = 0
                }) { (finished) in
        
    //                self.menuViewController.willMove(toParent: nil)
    //                self.menuViewController.view.removeFromSuperview()
    //                self.menuViewController.removeFromParent()
                    self.menuViewController.remove()
                    print("Удалили menuViewController")
                }
            }
        }
    
    
    
    
    
    
    
 // MARK: - MenuToggleDelegate
    
    func toggleMenu() {
        
        configureMenuViewController()
        isMove = !isMove
        showMenuViewController(shouldMove: isMove)
        print("открыли/закрыли меню")
    }
}


