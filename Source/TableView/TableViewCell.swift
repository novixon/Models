//
//  TableViewCell.swift
//  ModelsDevelopment
//
//  Created by novik.home on 14.06.17.
//  Copyright © 2017 Gleb Novik. All rights reserved.
//

import Foundation

/// Protocol for table view cells with models
protocol TableViewCell {
    
    associatedtype Model = TableViewCellModel
    
    /// Method for configurating table view cell with concrete model
    ///
    /// - Parameter model: Model for table view cell
    func setupWithModel(_ model: Model)
}
