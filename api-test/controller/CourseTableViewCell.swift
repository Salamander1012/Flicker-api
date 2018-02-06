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
    @IBOutlet weak var thumbnail: UIImageView!
    
    func setUpCell(title: String, imageSrc: String) {
        courseLabel.text = title
        let data = try? Data(contentsOf: URL(string: imageSrc)!)
        thumbnail.image = UIImage(data: data!)
        
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
