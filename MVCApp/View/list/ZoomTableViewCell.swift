//
//  ZoomTableViewCell.swift
//  MVCApp
//
//  Created by Tafani Rabbani on 22/06/22.
//

import UIKit

class ZoomTableViewCell: UITableViewCell {

    @IBOutlet weak var zoomTitle: UILabel!
    @IBOutlet weak var zoomImageView: UIImageView!
    
    var zoomBackground:ZoomBackground!{
        didSet{
            updateUI()
        }
    }
    
    func updateUI(){
        zoomTitle.text = zoomBackground.title
        zoomImageView.image = UIImage(named: zoomBackground.image)
        zoomImageView.layer.cornerRadius = 10
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
