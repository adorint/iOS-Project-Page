//
//  visitTableViewCell.swift
//  VisitedPage
//
//  Created by Dorin on 1/28/20.
//  Copyright © 2020 Dorin. All rights reserved.
//

import UIKit

class visitTableViewCell: UITableViewCell {

    @IBOutlet weak var timageview: UIImageView!
    @IBOutlet weak var cellview: visitTableViewCell!
    @IBOutlet weak var titlelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
