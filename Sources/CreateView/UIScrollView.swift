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
     
        indicatorStyle: UIScrollView.IndicatorStyle
        contentSize: CGSize = .zero
        offset: CGPoint? = nil
        inset: UIEdgeInsets? = nil
        isPagging: Bool = false
        topScroll: Bool = false
        bounces: Bool = false
        showHorizontalIndicator: Bool = true
        showVerticalIndicator: Bool = true
        tag: Int = 0
     
     */
    static func create(indicatorStyle: UIScrollView.IndicatorStyle,
                       contentSize: CGSize = .zero,
                       offset: CGPoint? = nil,
                       inset: UIEdgeInsets? = nil,
                       isPagging: Bool = false,
                       topScroll: Bool = false,
                       bounces: Bool = false,
                       showHorizontalIndicator: Bool = true,
                       showVerticalIndicator: Bool = true,
                       tag: Int = 0) -> UIScrollView {
        
        let scroll = UIScrollView()
        
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
        scroll.tag = 0
        
        return scroll
    }
}
