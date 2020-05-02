//
//  CustomCell.swift
//  ResizableTableView
//
//  Created by Shankar B S on 30/03/20.
//  Copyright © 2020 Slicode. All rights reserved.
//

import UIKit
class CustomCell: UITableViewCell {
    @IBOutlet weak var cellTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func updateCellWith(text: String) {
        cellTextLabel.text = text
    }
}
