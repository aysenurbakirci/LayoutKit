//
//  UIAlertController.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UIAlertController
public extension UIAlertController {
    
    /**
     Create UIAlertController
     */
    static func create(title: String? = nil,
                       message: String? = nil,
                       preferredStyle: Style = .alert,
                       actions: [UIAlertAction] = [],
                       textFields: [((UITextField) -> ())]? = []) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)

        actions.forEach { action in
            alertController.addAction(action)
        }
        
        textFields?.forEach({ textField in
            alertController.addTextField(configurationHandler: textField)
        })
        
        return alertController
    }
}
