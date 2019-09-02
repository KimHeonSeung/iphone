//
//  ViewController.swift
//  Calculator App
//
//  Created by tjoeun304 on 02/09/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var tfFirstNumber: UITextField!
    @IBOutlet var tfSecondNumber: UITextField!
    
    @IBOutlet var btnPlus: UIButton!
    @IBOutlet var btnMinus: UIButton!
    @IBOutlet var btnMulti: UIButton!
    @IBOutlet var btnDivide: UIButton!
    
    var strBuho: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let target = segue.destination as! ResultViewController
        target.num1 = Double(self.tfFirstNumber.text!)!
        target.num2 = Double(self.tfSecondNumber.text!)!
        target.buho = self.strBuho
    }

    @IBAction func onClickPlus(_ sender: UIButton) {
        self.strBuho = "+"
        
    }
    @IBAction func onClickMinus(_ sender: UIButton) {
        self.strBuho = "-"
    }
    @IBAction func onClickMulti(_ sender: UIButton) {
        self.strBuho = "*"
    }
    @IBAction func onClickDivide(_ sender: UIButton) {
        self.strBuho = "/"
    }
    
    func setBtnState(sender: UIButton) {
        for btn in self.buttons {
            if btn == sender {
                btn.isSelected = true
            } else {
                btn.isSelected = false
            }
        }
    }
    
}

