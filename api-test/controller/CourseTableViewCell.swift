//
//  UITableViewCell.swift
//  api-test
//
//  Created by Salman Fakhri on 1/31/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {


    @IBOutlet weak var courseLabel: UILabel!
    
    func setUpCell(title: String) {
        courseLabel.text = title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
