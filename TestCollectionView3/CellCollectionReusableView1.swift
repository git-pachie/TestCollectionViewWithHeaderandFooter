//
//  CellCollectionReusableView.swift
//  TestCollectionView3
//
//  Created by pachie on 30/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class CellCollectionReusableView: UICollectionViewCell {
        
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var labelImage: UILabel!
    
    @IBOutlet weak var labelSubheader: UILabel!
    
    
    func setupImage(imageNameKo: String) ->() {
        image1.image = UIImage(named: imageNameKo)
        //image1.frame.size = CGSize(width: self.frame.width, height: self.frame.height)
        
        image1.layer.cornerRadius = 10
        image1.clipsToBounds = true
        
        labelImage.text = "The Game Of Thrones, Season 1"
        
        labelImage.layer.shadowOffset = CGSize(width: 1, height: 1)
        labelImage.layer.shadowOpacity = 0.50
        
        labelSubheader.layer.shadowOffset = CGSize(width: 1, height: 1)
        labelSubheader.layer.shadowOpacity = 0.50
        
        
        
    }
    
   
    
}
