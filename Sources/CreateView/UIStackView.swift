//
//  UIStackView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

public extension UIStackView {
    
    /**
     Create UIStackView
     */
    static func create(subviews: [UIView],
                       axis: NSLayoutConstraint.Axis = .horizontal,
                       distribution: UIStackView.Distribution = .fill,
                       alignment: UIStackView.Alignment = .fill,
                       spacing: CGFloat = 1.0,
                       backgrounColor: UIColor = .clear,
                       isBaselineRelativeArrangement: Bool = false,
                       tamic: Bool = true) -> UIStackView {
        let stack = UIStackView()
        
        subviews.forEach { subview in
            stack.addArrangedSubview(subview)
        }
        
        stack.alignment = .center
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.spacing = spacing
        stack.backgroundColor = backgrounColor
        stack.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        stack.translatesAutoresizingMaskIntoConstraints = tamic
        
        return stack
    }
}
