//
//  CategoriesTableViewCell.swift
//  SudhanshuDemo
//
//  Created by Mac on 24/03/21.
//  Copyright © 2021 Sudhanshu. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomStackView: UIStackView!
    @IBOutlet weak var subCategoryLbl: UILabel!
    @IBOutlet weak var displayLbl: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
