//
//  UIDatePicker.swift
//  
//
//  Created by Ayşenur Bakırcı on 7.02.2022.
//

import UIKit

public extension UIDatePicker {
    
    /**
     Create UIDatePicker.
     */
    static func create(mode: UIDatePicker.Mode = .dateAndTime,
                       minuteInterval: Int? = nil,
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
