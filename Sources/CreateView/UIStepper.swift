//
//  UIStepper.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: Create UIStepper
public extension UIStepper {
    
    /**
     Create UIStepper
     */
    static func create(currentValue: Double = 0.0,
                       minValue: Double = 0.0,
                       maxValue: Double = 10.0,
                       stepValue: Double = 1.0,
                       tintColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       autorepeat: Bool = false,
                       isContinuous: Bool = false,
                       wraps: Bool = false,
                       tamic: Bool = true) -> UIStepper {
        let stepper = UIStepper()
        stepper.value = currentValue
        stepper.minimumValue = minValue
        stepper.maximumValue = maxValue
        stepper.stepValue = stepValue
        stepper.tintColor = tintColor
        stepper.backgroundColor = backgroundColor
        stepper.autorepeat = autorepeat
        stepper.isContinuous = isContinuous
        stepper.wraps = wraps
        stepper.translatesAutoresizingMaskIntoConstraints = tamic
        return stepper
    }
}
