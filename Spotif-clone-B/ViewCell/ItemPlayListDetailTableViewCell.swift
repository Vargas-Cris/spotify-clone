//
//  ItemPlayListDetailTableViewCell.swift
//  Spotif-clone-B
//
//  Created by MAC38 on 26/05/22.
//

import UIKit

class ItemPlayListDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
