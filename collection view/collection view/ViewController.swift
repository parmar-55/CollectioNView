//
//  ViewController.swift
//  collection view
//
//  Created by mac on 25/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionview: UICollectionView!
//    var arr1 = [UIImage]()
var arr1 = [(UIImage(named: "1")!),(UIImage(named: "2")!),(UIImage(named: "3")!), (UIImage(named: "4")!) , (UIImage(named: "5")!) , (UIImage(named: "3")!),(UIImage(named: "1")!),(UIImage(named: "2")!),(UIImage(named: "3")!), (UIImage(named: "4")!) , (UIImage(named: "5")!) , (UIImage(named: "3")!),(UIImage(named: "1")!),(UIImage(named: "2")!),(UIImage(named: "3")!), (UIImage(named: "4")!) , (UIImage(named: "5")!) , (UIImage(named: "3")!)]
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }


}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collecyionviewcell
        cell.imgview.image = arr1[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imagedetail : secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        imagedetail.mainimg = arr1[indexPath.row]
        self.navigationController?.pushViewController(imagedetail, animated: true)
    }
    
}


class collecyionviewcell: UICollectionViewCell{
    
    @IBOutlet weak var imgview: UIImageView!
}

extension ViewController : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionwidth = collectionView.bounds.width
        return CGSize(width: collectionwidth/4 - 2 , height: collectionwidth/4 - 2 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

