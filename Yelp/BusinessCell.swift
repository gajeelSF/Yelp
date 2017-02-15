//
//  BusinessCell.swift
//  Yelp
//
//  Created by SongYuda on 2/14/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            ratingImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            addressLabel.text = business.address
            reviewCountLabel.text = "\(business.reviewCount)"
            categoryLabel.text = business.categories
        }
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
