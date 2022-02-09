//
//  UIImageView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

public extension UIImageView {
    
    /**
     Create UIImageView
     */
    static func create(image: UIImage? = nil,
                       highlightedImage: UIImage? = nil,
                       contentMode: ContentMode = .scaleToFill,
                       isUserInteractionEnabled: Bool = false,
                       backgroundColor: UIColor? = nil,
                       tintColor: UIColor? = nil,
                       clipsToBounds: Bool = false,
                       isOpaque: Bool = true) -> UIImageView {
        let imageView = UIImageView()
        
        imageView.image = image
        imageView.highlightedImage = highlightedImage
        imageView.contentMode = contentMode
        imageView.isUserInteractionEnabled = isUserInteractionEnabled
        imageView.backgroundColor = backgroundColor
        imageView.tintColor = tintColor
        imageView.clipsToBounds = clipsToBounds
        imageView.isOpaque = isOpaque
        
        return imageView
    }
}
