//
//  thirdViewController.swift
//  collection view
//
//  Created by mac on 27/03/23.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionview.register(UINib.init(nibName: "thirdCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        let floawLayout = UPCarouselFlowLayout ()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width , height: collectionview.frame.size.height)
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 0.8
        floawLayout.sideItemAlpha = 1.8
        floawLayout.spacingMode = .fixed(spacing: 5.0)
        collectionview.collectionViewLayout = floawLayout
    }
    
    func collectData(){
        arrData = [
        ModelCollectionFlowLayout(title: "Astodiya Darwaza", image: #imageLiteral(resourceName: "3")),
        ModelCollectionFlowLayout(title: "Dariyapur Darwaza", image: #imageLiteral(resourceName: "1")),
        ModelCollectionFlowLayout(title: "Delhi Darwaza", image: #imageLiteral(resourceName: "3")),
        ModelCollectionFlowLayout(title: "Jamalpur Darwaza", image: #imageLiteral(resourceName: "1")),
        ModelCollectionFlowLayout(title: "Prem Darwaza", image: #imageLiteral(resourceName: "3")),
        ModelCollectionFlowLayout(title: "Raipur Darwaza", image: #imageLiteral(resourceName: "2")),
        ModelCollectionFlowLayout(title: "Teen Darwaza", image: #imageLiteral(resourceName: "1")),
        ]
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let layout = self.collectionView.collectionViewLayout as! UPCarouselFlowLayout
        let pageSide = (layout.scrollDirection == .horizontal) ? self.pageSize.width : self.pageSize.height
        let offset = (layout.scrollDirection == .horizontal) ? scrollView.contentOffset.x : scrollView.contentOffset.y
        currentPage = Int(floor((offset - pageSide / 2) / pageSide) + 1)
    }
    fileprivate var currentPage: Int = 0 {
        didSet {
            print("page at centre = \(currentPage)")
        }
    }
    
    fileprivate var pageSize: CGSize {
        let layout = self.collectionView.collectionViewLayout as! UPCarouselFlowLayout
        var pageSize = layout.itemSize
        if layout.scrollDirection == .horizontal {
            pageSize.width += layout.minimumLineSpacing
        } else {
            pageSize.height += layout.minimumLineSpacing
        }
        return pageSize
    }
}
//
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return arrData.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
//        cell.img.image = arrData[indexPath.row].image
//        cell.lblTitle.text = arrData[indexPath.row].title
//        return cell
//    }
//
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


