//
//  UITableView.swift
//  
//
//  Created by Ayşenur Bakırcı on 8.02.2022.
//

import UIKit

// MARK: - Create UITableView
public extension UITableView {
    
    /**
     Create UITableView.
     */
    static func createTable(style: UITableView.Style,
                            estimatedRowHeight: CGFloat,
                            backgroundColor: UIColor = .clear,
                            headerView: UIView? = nil,
                            footerView: UIView? = nil,
                            keyboardDismissMode: UIScrollView.KeyboardDismissMode = .interactive,
                            tag: Int = 0) -> UITableView {
        let tableView = UITableView(frame: .zero, style: style)
        
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = footerView
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = estimatedRowHeight
        tableView.backgroundColor = backgroundColor
        tableView.keyboardDismissMode = keyboardDismissMode
        tableView.tag = tag
        
        return tableView
    }
}

public extension UITableView {
    
    func dequeue<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Can not deque cell with identifier \(T.reuseIdentifier) from tableView \(self)")
        }
        return cell
    }
}
