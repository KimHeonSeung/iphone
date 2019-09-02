//
//  ViewController.swift
//  Alert App
//
//  Created by tjoeun304 on 02/09/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 전구의 이미지 상수
    let imgOn = UIImage(named: "lamp_on.jpg")
    let imgOff = UIImage(named: "lamp_off.jpg")
    let imgRemove = UIImage(named: "lamp_remove.png")
    
    // 전구의 상태를 나나태는 변수(켜진 상태 : true)
    var isLampOn = true

    @IBOutlet var lampImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 앱 실행 시 켜진 전구가 나타남
        lampImg.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn {
            // 전구가 켜져있을 켜져있다는 얼럿 실행
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            // 전구가 꺼져있을 경우 전구를 켠다
            isLampOn = true
            self.lampImg.image = self.imgOn
        }
    }
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            // 전구가 켜져있을 경우 끌 것인지 묻는 얼럿 실행
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {Action in self.lampImg.image = self.imgOff
                self.isLampOn = false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    // 전구를 제거할 것인지 묻고 '켜기', '끄기', '제거' 의 세 동작 중 선택하여 실행
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다(off).", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
            self.isLampOn = false
        })
        let onAction = UIAlertAction(title: "아니오, 켭니다(on).", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOn
            self.isLampOn = true
        })
        let removeAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.destructive, handler: {ACTION in self.lampImg.image = self.imgRemove
            self.isLampOn = false
        })
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        present(lampRemoveAlert, animated: true, completion: nil)
        
        isLampOn = false
        self.lampImg.image = self.imgRemove
    }
    
}

