//
//  ViewController.swift
//  ModelsDevelopment
//
//  Created by novik.home on 14.06.17.
//  Copyright © 2017 Gleb Novik. All rights reserved.
//

import UIKit

class ColoredTableViewCell: UITableViewCell, TableViewCell {
    typealias Model = ColoredTableViewCellModel
    
    func setupWithModel(_ model: ColoredTableViewCellModel) {
        backgroundColor = model.color
    }
}

class ColoredTableViewCellModel: TableViewCellModel {
    typealias Cell = ColoredTableViewCell
    
    let color: UIColor
    
    init(color: UIColor) {
        self.color = color
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cellFactory: TableViewCellFactory!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellFactory = TableViewCellFactory(tableView: mainTableView)
        
        mainTableView.delegate = self;
        mainTableView.dataSource = self;
        
        mainTableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model: ColoredTableViewCellModel = ColoredTableViewCellModel(color: UIColor.green)
        let cell = cellFactory.createCell(with: model)
        
        
        return cell
    }

}

