//
//  UICollectionViewFlowLayout.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

public extension UICollectionViewFlowLayout {
    
    /**
     Create UICollectionViewFlowLayout
     */
    static func create(itemSize: CGSize = .zero,
                       headerSize: CGSize = .zero,
                       footerSize: CGSize = .zero,
                       scrollDirection: UICollectionView.ScrollDirection = .vertical,
                       interItemSpacing: CGFloat = .leastNormalMagnitude,
                       lineSpacing: CGFloat = .leastNormalMagnitude,
                       sectionInset: UIEdgeInsets = .zero) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        layout.itemSize = itemSize
        layout.minimumInteritemSpacing = interItemSpacing
        layout.minimumLineSpacing = lineSpacing
        layout.sectionInset = sectionInset
        layout.invalidateLayout()
        layout.footerReferenceSize = .zero
        layout.headerReferenceSize = .zero
        return layout
    }
    
}
