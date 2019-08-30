//
//  ViewController.swift
//  ImageViewer
//
//  Created by tjoeun304 on 30/08/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageFileNames = ["1.jpg", "2.jpeg", "3.jpeg"]
    var images: Array<UIImage>?
    
    var curIndex = 0
    
    @IBOutlet var imageViewer: UIImageView!
    @IBOutlet var btnBefore: UIButton!
    @IBOutlet var btnAfter: UIButton!
    @IBOutlet var lbTotalOf: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        images = Array()
        for image_name in imageFileNames {
            let image = UIImage(named: image_name)
            images?.append(image!)
        }
        
        lbTotalOf.text = "\(curIndex + 1) / \(self.images!.count)"
    }

    @IBAction func onClickBefore(_ sender: UIButton) {
        curIndex -= 1
        
        if curIndex < 0 {
           curIndex = 0
            return
        } else if curIndex == 0 {
            btnBefore.isEnabled = false
            self.imageViewer.image = images?[curIndex]
        } else {
            self.imageViewer.image = images?[curIndex]
        }
        if !self.btnAfter.isEnabled {
            btnAfter.isEnabled = true
        }
        lbTotalOf.text = "\(curIndex + 1) / \(self.images!.count)"
    }
    
    
    @IBAction func onClickAfter(_ sender: UIButton) {
        curIndex += 1

        if curIndex > self.images!.count - 1 {
            curIndex = self.images!.count - 1
            return
        } else if curIndex == self.images!.count - 1 {
            btnAfter.isEnabled = false
            self.imageViewer.image = images?[curIndex]
        } else {
            self.imageViewer.image = images?[curIndex]
        }
        if !self.btnBefore.isEnabled {
            btnBefore.isEnabled = true
        }
        lbTotalOf.text = "\(curIndex + 1) / \(self.images!.count)"
    }
}

