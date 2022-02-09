//
//  UIDatePicker.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

//MARK: - Create UIDatePicker
public extension UIDatePicker {
    
    /**
     Create UIDatePicker.
     */
    static func create(mode: UIDatePicker.Mode = .dateAndTime,
                       minuteInterval: Int? = nil,
                       tintColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       locale: Locale = .current,
                       timeZone: TimeZone = .current,
                       maxDate: Date = .distantFuture,
                       minDate: Date = .distantPast,
                       date: Date? = nil,
                       countDownDuration: TimeInterval? = nil,
                       tamic: Bool = true) -> UIDatePicker {
        let picker = UIDatePicker()
        
        picker.datePickerMode = mode
        picker.locale = locale
        picker.timeZone = timeZone
        picker.maximumDate = maxDate
        picker.minimumDate = minDate
        picker.tintColor = tintColor
        picker.backgroundColor = backgroundColor
        
        if let minuteInterval = minuteInterval {
            picker.minuteInterval = minuteInterval
        }
        
        if let date = date {
            picker.date = date
        }
        
        if let countDownDuration = countDownDuration {
            picker.countDownDuration = countDownDuration
        }
        
        picker.translatesAutoresizingMaskIntoConstraints = tamic
        
        return picker
    }
}
