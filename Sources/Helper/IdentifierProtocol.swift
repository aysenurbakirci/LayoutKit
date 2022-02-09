//
//  IdentifierProtocol.swift
//  
//
//  Created by Ayşe Nur Bakırcı on 9.02.2022.
//

import Foundation
import UIKit

extension UICollectionReusableView {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
