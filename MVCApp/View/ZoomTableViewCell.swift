//
//  ZoomTableViewCell.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 23/06/22.
//

import UIKit

class ZoomTableViewCell: UITableViewCell {

    @IBOutlet weak var zoomTitle: UILabel!
    @IBOutlet weak var zoomImage: UIImageView!
    
    var zoomBackground : ZoomBackground!{
        didSet{
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(){
        zoomTitle.text = zoomBackground.title
        zoomImage.image = UIImage(named: zoomBackground.image)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
