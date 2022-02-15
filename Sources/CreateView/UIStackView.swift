//
//  UIStackView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIStackView
public extension UIStackView {
    
    /**
     Create UIStackView
     
        subviews: [UIView]
        axis: NSLayoutConstraint.Axis
        distribution: UIStackView.Distribution
        alignment: UIStackView.Alignment
        spacing: CGFloat = 1.0
        backgrounColor: UIColor = .clear
        isBaselineRelativeArrangement: Bool = false
        tamic: Bool = true
     
     */
    static func create(subviews: [UIView],
                       axis: NSLayoutConstraint.Axis,
                       distribution: UIStackView.Distribution,
                       alignment: UIStackView.Alignment,
                       spacing: CGFloat = 1.0,
                       backgrounColor: UIColor = .clear,
                       isBaselineRelativeArrangement: Bool = false,
                       tamic: Bool = true) -> UIStackView {
        let stack = UIStackView()
        
        subviews.forEach { subview in
            stack.addArrangedSubview(subview)
        }
        
        stack.alignment = alignment
        stack.axis = axis
        stack.distribution = distribution
        stack.spacing = spacing
        stack.backgroundColor = backgrounColor
        stack.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        stack.translatesAutoresizingMaskIntoConstraints = tamic
        
        return stack
    }
}
