//
//  thirdCollectionViewCell.swift
//  collection view
//
//  Created by mac on 27/03/23.
//

import UIKit

class thirdCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lbltext: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.layer.cornerRadius = 13.0
        self.view.layer.shadowColor = UIColor.blue.cgColor
        self.view.layer.shadowOpacity = 0.5
        self.view.layer.shadowOffset = .zero
        self.view.layer.shadowPath = UIBezierPath(rect: self.view.bounds).cgPath
        self.view.layer.shouldRasterize = true
    }

}
