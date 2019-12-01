//
//  CellCollectionReusableView.swift
//  TestCollectionView3
//
//  Created by pachie on 30/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class CellCollectionReusableViewSmall: UICollectionViewCell {
        
    
    
   

    @IBOutlet weak var image1: UIImageView!
    
    
    
    
    func setupImage22(imageNameKo: String) ->() {
        image1.image = UIImage(named: imageNameKo)
        
        //image1.frame.size = CGSize(width: width, height: height)
        
        image1.layer.cornerRadius = 5
        image1.clipsToBounds = true
    }
    
}
