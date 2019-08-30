//
//  ViewController.swift
//  DatePicker
//
//  Created by tjoeun304 on 30/08/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 타이머가 구동되면 실행할 함수
    let timeSelector: Selector = #selector(ViewController.updateTime)
    // 타이머 간격 : 1초
    let interval = 1.0
    // 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    var count = 0

    @IBOutlet var lbCurrentTime: UILabel!
    @IBOutlet var lbPickerTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 타이머 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        // 전달된 인수 저장
        let datePickerView = sender
        // DateFormatter 클래스 상수 선언
        let formatter = DateFormatter()
        // formatter의 dateFormate 속성을 설정
        formatter.dateFormat = "yyyy년 MM월 dd일 (EEE)  HH시 mm분 ss초"
        // 데이트 피커에서 선택한 날짜를 formatter의 dateFormate에서 설정한 포맷대로
        // string 메소드를 사용해 문자열로 변환
        lbPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
    }
    
    // 타이머가 구동된 후 정해진 시간이 되었을 때 실행할 함수
    @objc func updateTime() {
        // count 값을 문자열로 변환하여 lbCurrentTime.text에 출력
        // lbCurrentTime.text = String(count)
        // count += 1
        
        // 현재 시간을 가져옴
        let date = NSDate()
        // 상수 formatter의 dateFormat 속성 설정
        let formatter = DateFormatter()
        // 현재 날짜 (date) 를 formatter의 dateFormat에서 설정한 포맷대로
        // string 메소드를 사용해 문자열로 변환
        formatter.dateFormat = "yyyy년 MM월 dd일 (EEE)  HH시 mm분 ss초"
        // 문자열로 변환한 date 값을 "현재시간 : " 이라는 문자열에 추가
        // 그 문자열을 lbCurrentTime의 text에 입력
        lbCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
    }
    
}

