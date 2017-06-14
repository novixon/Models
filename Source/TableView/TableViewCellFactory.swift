//
//  TableViewCellFactory.swift
//  ModelsDevelopment
//
//  Created by novik.home on 14.06.17.
//  Copyright © 2017 Gleb Novik. All rights reserved.
//

import Foundation
import UIKit

protocol ITableViewCellFactory {
    
    func createCell<Model: TableViewCellModel, Cell: TableViewCell>(with model: Model) -> Cell? where Model.Cell == Cell, Cell.Model == Model
}

class TableViewCellFactory {
    
    private let tableView: UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
    }
    
//    func createCell<Model: TableViewCellModel, Cell: TableViewCell>(with model: Model) -> Cell? where Model.Cell == Cell, Cell.Model == Model, Cell: UITableViewCell {
//        let identifier = model.cellClassName
//        let nib = UINib(nibName: model.cellClassName, bundle: nil)
//
//        tableView.register(nib, forCellReuseIdentifier: identifier)
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
//            return nil
//        }
//
//        cell.setupWithModel(model)
//
//        return cell
//    }
    
    func createCell<Model: TableViewCellModel, Cell: UITableViewCell>(with model: Model) -> UITableViewCell
        where Cell: TableViewCell, Model.Cell == Cell, Cell.Model == Model {
            
            let identifier = model.cellClassName
            let nib = UINib(nibName: model.cellClassName, bundle: nil)
            
            tableView.register(nib, forCellReuseIdentifier: identifier)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! Cell
            
            cell.setupWithModel(model)
            
            return cell
    }
}
