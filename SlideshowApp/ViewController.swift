//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Issei Ueda on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tapAction(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let expandViewController:ExpandViewController = segue.destination as! ExpandViewController
        expandViewController.expandImageView = photoimage
    }
    
    
    @IBOutlet weak var photoimage: UIImageView!
    @IBOutlet weak var gobutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    
    var myimage:UIImageView!
    
    var timer: Timer!
    
    var nowIndex:Int = 0
    
    var timer_sec: Float = 0
    
    var imageArray:[UIImage] = [
        UIImage(named: "1unsplash.jpeg")!,
        UIImage(named: "2unsplash.jpeg")!,
        UIImage(named: "3unsplash.jpeg")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nowIndex += 1
        photoimage.image = imageArray[nowIndex]
    }
    
    @IBAction func go(_ sender: Any) {
        nowIndex += 1
        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
        photoimage.image = imageArray[nowIndex]
    }
    
    @IBAction func back(_ sender: Any) {
        nowIndex -= 1
        if (nowIndex < 1) {
            nowIndex = 2
        }
        photoimage.image = imageArray[nowIndex]
    }
    
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 2.0
        nowIndex += 1
        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
        photoimage.image = imageArray[nowIndex]
    }
    
    @IBAction func stop(_ sender: Any) {
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil , repeats: true)
            gobutton.isEnabled = false
            backbutton.isEnabled = false
        } else {
            self.timer.invalidate()
            self.timer = nil
            gobutton.isEnabled = true
            backbutton.isEnabled = true
        }
    }
    
}


//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let expandViewController:ExpandViewController = segue.destination as! ExpandViewController
//        expandViewController.expandImage.image = photoimage.image
//    }
