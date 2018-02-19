//
//  CityTableViewCell.swift
//  TableView Demostration
//
//  Created by James Simshaw on 2/5/18.
//  Copyright © 2018 James Simshaw. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        cityImage.image = nil
        nameLabel.textColor = nil
        nameLabel.text = nil
        descriptionLabel.text = nil
    }
    
    func configure(with city: City) {
        if let image = city.image {
            cityImage.image = image
            nameLabel.textColor = UIColor.white
        }
        nameLabel.text = city.name
        descriptionLabel.text = city.description
    }
}
