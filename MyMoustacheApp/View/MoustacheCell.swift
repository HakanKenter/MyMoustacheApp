//
//  MoustacheCell.swift
//  MyMoustacheApp
//
//  Created by kenter on 21/07/2022.
//

import UIKit

class MoustacheCell: UICollectionViewCell {
    
    @IBOutlet weak var iv: UIImageView!
    
    var image: UIImage? {
        didSet {
            iv.image = image
            setupCell()
        }
    }
    
    func setupCell() {
        iv.layer.borderColor = UIColor.systemMint.cgColor
        iv.layer.borderWidth = 3
        iv.layer.cornerRadius = frame.width / 2
        iv.contentMode = .scaleAspectFill
    }
}
