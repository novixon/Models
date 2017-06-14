//
//  TableViewCellModel.swift
//  ModelsDevelopment
//
//  Created by novik.home on 14.06.17.
//  Copyright © 2017 Gleb Novik. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Base protocols

/// Protocol for table view cell models
protocol TableViewCellModel {
    
    associatedtype Cell = TableViewCell
}

// MARK: - Usefull extensions

extension TableViewCellModel {
    
    var cellClassName: String {
        return String(describing: Cell.self)
    }
}
