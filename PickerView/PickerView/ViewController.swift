//
//  ViewController.swift
//  PickerView
//
//  Created by tjoeun304 on 30/08/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 5
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = ["i_1.jpg", "i_2.jpg",  "i_3.jpg",  "i_4.jpg",  "i_5.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lbImageFileName: UILabel!
    @IBOutlet var lbImageView: UIImageView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // i를 0 부터 MAN_ARRAY_NUM보다 작을 때 까지 반복
        for i in 0 ..< MAX_ARRAY_NUM {
            // 각 파일명에 해당하는 이미지를 생성하여
            let image = UIImage(named: imageFileName[i])
            // 생성된 이미지를 imageArray에 추가
            imageArray.append(image)
        }
        // 뷰가 로드되었을 때 첫 번째 파일명 출력
        lbImageFileName.text = imageFileName[0]
        // 뷰가 로드되었을 때 첫 번째 이미지 출력
        imageView.image = imageArray[0]
    }
    
    // 피커뷰의 컴포넌트 수 설정
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return PICKER_VIEW_COLUMN
    }
    // 피커뷰의 개수 설정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return imageFileName.count
    }
    
    // 피커뷰의 각 Row의 타이틀 설정
    // func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //        return imageFileName[row]
    // }
    
    // 피커뷰의 각 Row의 view 설정
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            let imageView = UIImageView(image: imageArray[row])
            imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageView
    }
    // 피커뷰가 선택되었을 때 실행
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            lbImageFileName.text = imageFileName[row]
            imageView.image = imageArray[row]
    }
    // 피커뷰의 높이 설정
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return PICKER_VIEW_HEIGHT
    }
    
}
