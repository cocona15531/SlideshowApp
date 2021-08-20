//
//  ExpandViewController.swift
//  SlideshowApp
//
//  Created by Issei Ueda on 2021/08/18.
//

import UIKit

class ExpandViewController: UIViewController {
    
    @IBOutlet weak var expandImage: UIImageView!
    
    var expandImageView : UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        expandImage.image = expandImageView?.image
    }
    
}
