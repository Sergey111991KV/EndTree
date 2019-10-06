//
//  CaruselViewController.swift
//  EndTree
//
//  Created by Сергей Косилов on 05.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import UIKit

class CaruselViewController: UIViewController {

     var isMove = false
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(menuOpenClose))
        
    }
    
    @objc private func menuOpenClose() {
 
        isMove = !isMove
        showMenuViewController(shouldMove: isMove)
        print("carousel")
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
                               self.view.frame.origin.x =  -self.view.frame.width / 5
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
                               self.view.frame.origin.x = 0
               }) { (finished) in
                   
               }
           }
       }
    
    
    
}
