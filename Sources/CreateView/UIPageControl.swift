//
//  UIPageControl.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UIPageControl
public extension UIPageControl {
    
    /**
     Create UIPageControl.
     
        currentPage: Int
        numberOfPages: Int
        indicatorColor: UIColor = .gray
        currentIndicatorColor: UIColor = .black
        backgroundColor: UIColor = .clear
        hidesForSinglePage: Bool = true
        tamic: Bool = true
     
     */
    static func create(currentPage: Int,
                       numberOfPages: Int,
                       indicatorColor: UIColor = .gray,
                       currentIndicatorColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       hidesForSinglePage: Bool = true,
                       tamic: Bool = true) -> UIPageControl {
        let pageControl = UIPageControl()
        
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPages
        pageControl.pageIndicatorTintColor = indicatorColor
        pageControl.currentPageIndicatorTintColor = currentIndicatorColor
        pageControl.backgroundColor = backgroundColor
        pageControl.hidesForSinglePage = hidesForSinglePage
        pageControl.translatesAutoresizingMaskIntoConstraints = tamic
        
        return pageControl
    }
}
