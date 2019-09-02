//
//  EditProtocol.swift
//  Navigator App
//
//  Created by tjoeun304 on 02/09/2019.
//  Copyright © 2019 tjoeun304. All rights reserved.
//

import Foundation

// Java 의 Interface와 같이 추상메소드를 선언
protocol EditProtocol {
    func setUserInformation(id: String, name: String, age: Int)
}
