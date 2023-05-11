//
//  secondViewController.swift
//  collection view
//
//  Created by mac on 25/03/23.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var iimgview: UIImageView!
    
    var mainimg: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        iimgview.image = mainimg
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
