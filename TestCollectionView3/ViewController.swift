//
//  ViewController.swift
//  TestCollectionView3
//
//  Created by pachie on 28/11/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionview: UICollectionView!
    
    var myList = [UIColor](arrayLiteral: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) , #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
    var myList2 = [UIColor](arrayLiteral: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetails" {
            
            if let selectedIndexPath = collectionview.indexPathsForSelectedItems?.first
            {
                if let vc = segue.destination as? DetailViewController
                {
                    
                    print("section \(selectedIndexPath.section)")
                    print("item \(selectedIndexPath.item)")
                    
                    vc.selectedSection = selectedIndexPath.section
                    vc.selectedItem = selectedIndexPath.item
                }
            }
            
            
            
            //print("prepare for segue \(selectedIndexPath)")
        }
    }


}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return myList.count
        }
        else
        {
            return myList2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.backgroundColor = myList[indexPath.item]
        }
        else
        {
            cell.backgroundColor = myList2 [indexPath.item]
        }
        
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = CGFloat(100)
        
        
        
        let flow = collectionViewLayout as! UICollectionViewFlowLayout
        
        let sm = flow.minimumInteritemSpacing - 2
        
        let width = collectionView.bounds.width
        let adjSize = (width / 3) - sm
        
        
       
        return CGSize(width: adjSize, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        if UICollectionView.elementKindSectionHeader == kind {
            
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! HeaderCollectionReusableView
                
                
                
                if indexPath.section == 0
                {
                    header.setUp(numberOfItems: myList.count)
                }
                else
                {
                    header.setUp(numberOfItems: myList2.count)
                }
                
            
                return header
        }
        else
        {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "footer", for: indexPath)
            
            return footer
            
        }
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Section \(indexPath.section) and Item \(indexPath.item)")
        
        performSegue(withIdentifier: "showDetails", sender: self)
        
    }
    
    
    
    
}
