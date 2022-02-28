//
//  UICollectionView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

//MARK: - Create UICollectionView
public extension UICollectionView {
    
    /**
     Create UICollectionView.
     */
    static func createCollection(layout: UICollectionViewFlowLayout,
                                 backgroundColor: UIColor = .clear,
                                 showHorizontalIndicator: Bool = false,
                                 showVerticalIndicator: Bool = false,
                                 isScrolling: Bool = true,
                                 isPaging: Bool = false,
                                 isPrefetching: Bool = true,
                                 tag: Int = 0) -> UICollectionView{
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.backgroundColor = backgroundColor
        collectionView.showsHorizontalScrollIndicator = showHorizontalIndicator
        collectionView.showsVerticalScrollIndicator = showVerticalIndicator
        collectionView.isScrollEnabled = isScrolling
        collectionView.isPagingEnabled = isPaging
        collectionView.isPrefetchingEnabled = isPrefetching
        collectionView.tag = tag
        
        return collectionView
    }
}

//MARK: - UICollectionView dequeue cell
public extension UICollectionView {
    
    /**
     Dequeue UICollectionViewCell
     */
    func dequeue<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Can not deque cell with identifier \(T.reuseIdentifier) from collectionView \(self)")
        }
        return cell
    }
}
