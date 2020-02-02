//
//  UIHelper.swift
//  GHFollowers
//
//  Created by German Hernandez on 11/01/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import UIKit

enum UIHelper {
    
   static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayot = UICollectionViewFlowLayout()
        flowLayot.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayot.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayot
    }
    
}
