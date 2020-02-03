//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by German Hernandez on 25/01/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter           = DateFormatter()
        dateFormatter.dateFormat    = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
