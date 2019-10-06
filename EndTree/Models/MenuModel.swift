//
//  MenuModel.swift
//  EndTree
//
//  Created by Сергей Косилов on 05.10.2019.
//  Copyright © 2019 Сергей Косилов. All rights reserved.
//

import Foundation


import Foundation
import UIKit

enum MenuModel: Int, CustomStringConvertible {
   
    
    
    case Profile
    case Menu
    case Contacts
    case News
    
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Menu: return "Menu"
        case .Contacts: return "Contacts"
        case .News: return "News"
            
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "Profile") ?? UIImage()
        case .Menu: return UIImage(named: "Menu") ?? UIImage()
        case .Contacts: return UIImage(named: "Contacts") ?? UIImage()
        case .News: return UIImage(named: "News") ?? UIImage()
            
        }
    }
    
}
