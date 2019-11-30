//
//  SmallCards1DataSource.swift
//  TestCollectionView3
//
//  Created by pachie on 30/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class SmallCards1DataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    fileprivate var mySmallCardList = [UIColor]()
    
    init(colorData: [UIColor]) {
        mySmallCardList = colorData
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mySmallCardList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "smallcell", for: indexPath)
        
        cell.backgroundColor = mySmallCardList[indexPath.item]
        
        cell.layer.cornerRadius = 10
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        //let height = CGFloat(100)
        let width = (collectionView.bounds.width / 2) - 40

        //let colLayout = collectionViewLayout as! UICollectionViewFlowLayout

        //let subMin = colLayout.minimumInteritemSpacing

        let heightSize = width  / 1.5

        print("collection view width \(width)")
               print("heightSize: \(heightSize)")
               //print("sm \(subMin)")


        return CGSize(width: width, height: heightSize)

    
       // return CGSize(width: 100, height: 100)
    
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Section \(indexPath.section) at item \(indexPath.item)")
    }
    
    
    

    
}
