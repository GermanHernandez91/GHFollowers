//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by German Hernandez on 02/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import UIKit

extension UITableView {
    
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
