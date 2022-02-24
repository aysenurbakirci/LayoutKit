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
     
        layout: UICollectionViewLayout
        addCells: [UICollectionViewCell.Type]
        header: UICollectionReusableView.Type? = nil
        footer: UICollectionReusableView.Type? = nil
        backgroundColor: UIColor = .clear
        showHorizontalIndicator: Bool = false
        showVerticalIndicator: Bool = false
        isScrolling: Bool = true,
        isPaging: Bool = false,
        isPrefetching: Bool = true,
        tag: Int = 0
     
     */
    static func createCollection(layout: UICollectionViewLayout,
                                 addCells: [UICollectionViewCell.Type],
                                 header: UICollectionReusableView.Type? = nil,
                                 footer: UICollectionReusableView.Type? = nil,
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
        
        addCells.forEach { cellType in
            collectionView.register(cellType.self, forCellWithReuseIdentifier: cellType.reuseIdentifier)
        }
        
        if let header = header {
            collectionView.register(header.self,
                                    forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                    withReuseIdentifier: header.reuseIdentifier)
        }
        
        if let footer = footer {
            collectionView.register(footer.self,
                                    forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                    withReuseIdentifier: footer.reuseIdentifier)
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
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Can not deque cell with identifier \(T.reuseIdentifier) from tableView \(self)")
        }
        return cell
    }
 }
