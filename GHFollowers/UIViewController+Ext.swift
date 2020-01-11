//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by German Hernandez on 11/01/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func pressentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            
            self.present(alertVC, animated: true)
        }
    }
    
}
