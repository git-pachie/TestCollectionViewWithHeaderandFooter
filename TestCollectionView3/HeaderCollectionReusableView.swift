//
//  HeaderCollectionReusableView.swift
//  TestCollectionView3
//
//  Created by pachie on 29/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet weak var headerLabel: UILabel!
    
    func setUp(numberOfItems: Int) {
        headerLabel.text = "Count \(numberOfItems)"
    }
}
