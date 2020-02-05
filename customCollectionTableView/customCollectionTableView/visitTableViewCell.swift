//
//  visitTableViewCell.swift
//  customCollectionTableView
//
//  Created by Dorin on 2/3/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class visitTableViewCell: UITableViewCell {

    @IBOutlet weak var tableCellContentView: UIView!
    @IBOutlet weak var timageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        tableCellContentView.layer.cornerRadius = 20
        tableCellContentView.clipsToBounds = true
        //timageView.layer.cornerRadius = 10
        //timageView.clipsToBounds = true
    }

}
