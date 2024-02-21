//
//  GroupTableViewCell.swift
//  StudyPolygon
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
