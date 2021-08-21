//
//  ExpandViewController.swift
//  SlideshowApp
//
//  Created by Issei Ueda on 2021/08/18.
//

import UIKit

class ExpandViewController: UIViewController {
    
    @IBOutlet weak var expandImageview: UIImageView!
    @IBAction func backButton(_ sender: Any) {
    }
    
    var expandviewer : UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        expandImageview.image = expandviewer?.image
        
    }
    
}
