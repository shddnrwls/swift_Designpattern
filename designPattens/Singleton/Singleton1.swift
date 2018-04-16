//
//  Singleton1.swift
//  designPattens
//
//  Created by mac on 2018. 4. 16..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation

class Singleton {
    static let sharedInstance = Singleton() // static 전역번수로 선언해서 생성하기전까지 메모리에 올라가지 않는다.
    var x : Int = 0
    private init(){ }
}
let instance: Singleton = Singleton.sharedInstance
print(instance.x)
let instancel = Singleton()// private 라 에러가난다
