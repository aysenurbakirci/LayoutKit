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
     
        preferredStyle: Style
        title: String? = nil
        message: String? = nil
        buttons: [UIAlertAction]? = nil
        textFields: [UITextField]? = nil
     
     */
    static func create(preferredStyle: Style,
                       title: String? = nil,
                       message: String? = nil,
                       buttons: [UIAlertAction]? = nil,
                       textFields: [UITextField]? = nil) -> UIAlertController {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: preferredStyle)
        buttons?.forEach { action in
            alertController.addAction(action)
        }
        
        textFields?.forEach({ field in
            
            alertController.addTextField { alertField in
                
                alertField.textAlignment = field.textAlignment
                alertField.font = field.font
                alertField.textColor = field.textColor
                alertField.placeholder = field.placeholder
                alertField.keyboardType = field.keyboardType
            }
        })
        
        return alertController
    }
}
