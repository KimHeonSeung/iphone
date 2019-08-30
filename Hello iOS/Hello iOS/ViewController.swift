//
//  ViewController.swift
//  Hello iOS
//
//  Created by tjoeun304 on 30/08/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Interface Builder Outlet
    @IBOutlet var lbMsg: UILabel!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickName(_ sender: UIButton) {
        if let msg = tfName.text, msg.trimmingCharacters(in: .whitespacesAndNewlines).count > 0 {
            lbMsg.text = "Hello ~ \(msg)"
        }
        tfName.text = ""
    }
    
}

