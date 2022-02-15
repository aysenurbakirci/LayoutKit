//
//  UIAlertAction.swift
//  
//
//  Created by Ayşe Nur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UIAlertAction
public extension UIAlertAction {
    
    /**
     Create UIAlertAction
     
        title: String? = nil
        style: Style = .default
        handler: ((UIAlertAction) -> ())? = nil
     
     */
    static func createAction(title: String? = nil,
                             style: Style = .default,
                             handler: ((UIAlertAction) -> ())? = nil) -> UIAlertAction {
        let action = UIAlertAction(title: title,
                                   style: style,
                                   handler: handler)
        return action
    }
}
