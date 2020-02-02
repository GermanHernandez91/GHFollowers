//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by German Hernandez on 02/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
}
