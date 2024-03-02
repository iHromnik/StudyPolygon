//
//  FriendTableViewCell.swift
//  StudyPolygon
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shadowView.layer.cornerRadius = shadowView.bounds.height / 2
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.7
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOffset = CGSize(width: 5, height: 10)
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
