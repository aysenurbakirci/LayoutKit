//
//  UIScrollView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIScrollView
public extension UIScrollView {
    
    /**
     Create UIScrollView
     */
    static func create(delegate: UIScrollViewDelegate? = nil,
                       contentSize: CGSize = .zero,
                       offset: CGPoint? = nil,
                       inset: UIEdgeInsets? = nil,
                       indicatorStyle: UIScrollView.IndicatorStyle = .default,
                       isPagging: Bool = false,
                       topScroll: Bool = false,
                       bounces: Bool = false,
                       showHorizontalIndicator: Bool = true,
                       showVerticalIndicator: Bool = true,
                       tamic: Bool = true) -> UIScrollView {
        let scroll = UIScrollView()
        
        if let delegate = delegate {
            scroll.delegate = delegate
        }
        
        scroll.contentSize = contentSize
        
        if let offset = offset {
            scroll.contentOffset = offset
        }
        
        if let inset = inset {
            scroll.contentInset = inset
        }
        
        scroll.indicatorStyle = indicatorStyle
        scroll.isPagingEnabled = isPagging
        scroll.scrollsToTop = topScroll
        scroll.bounces = bounces
        scroll.showsHorizontalScrollIndicator = showHorizontalIndicator
        scroll.showsVerticalScrollIndicator = showVerticalIndicator
        scroll.translatesAutoresizingMaskIntoConstraints = tamic
        
        return scroll
    }
}
