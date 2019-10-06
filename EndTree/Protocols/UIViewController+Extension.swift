//
//  UIViewController+Extension.swift
//  EndTree
//
//  Created by Сергей Косилов on 06.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
