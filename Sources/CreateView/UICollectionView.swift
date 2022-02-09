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
     Create UICollectionView
     */
    static func createCollection(layout: UICollectionViewLayout,
                                 cell: UICollectionViewCell.Type,
                                 header: UICollectionReusableView.Type? = nil,
                                 footer: UICollectionReusableView.Type? = nil,
                                 backgroundColor: UIColor = .clear,
                                 showHorizontalIndicator: Bool = false,
                                 showVerticalIndicator: Bool = false,
                                 source: UICollectionViewDelegate&UICollectionViewDataSource) -> UICollectionView{
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = source
        collectionView.dataSource = source
        collectionView.backgroundColor = backgroundColor
        collectionView.showsHorizontalScrollIndicator = showHorizontalIndicator
        collectionView.showsVerticalScrollIndicator = showVerticalIndicator
        collectionView.register(cell.self, forCellWithReuseIdentifier: cell.reuseIdentifier)
        
        if let header = header {
            collectionView.register(header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: header.reuseIdentifier)
        }
        
        if let footer = footer {
            collectionView.register(footer.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footer.reuseIdentifier)
        }
        
        return collectionView
    }
}

//MARK: - UICollectionView dequeue cell
extension UICollectionView {
    
    /**
     Dequeue UICollectionViewCell
     */
    func dequeue<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
 }
