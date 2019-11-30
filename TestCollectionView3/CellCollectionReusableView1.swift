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
    
   

    
    func setupImage(imageNameKo: String) ->() {
        image1.image = UIImage(named: imageNameKo)
        image1.frame.size = CGSize(width: self.frame.width, height: self.frame.height)
        
        image1.layer.cornerRadius = 10
        image1.clipsToBounds = true
    }
    
   
    
}
