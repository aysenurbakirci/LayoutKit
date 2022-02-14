//
//  UIProgressView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIProgressView
public extension UIProgressView {
    
    /**
     Create UIProgressView
     */
    static func create(style: UIProgressView.Style = .default,
                       tintColor: UIColor = .black,
                       currentProgress: Float = 0.0,
                       observedProgress: Progress? = nil,
                       progressImage: UIImage? = nil,
                       trackImage: UIImage? = nil,
                       tamic: Bool = true) -> UIProgressView {
        let progress = UIProgressView()
        
        progress.progressViewStyle = style
        progress.progressTintColor = tintColor
        
        if currentProgress < 0.0 {
            progress.progress = 0.0
        } else if currentProgress > 1.0  {
            progress.progress = 1.0
        } else {
            progress.progress = currentProgress
        }
        
        progress.observedProgress = observedProgress
        progress.progressImage = progressImage
        progress.trackImage = trackImage
        progress.translatesAutoresizingMaskIntoConstraints = tamic
        
        return progress
    }
}
