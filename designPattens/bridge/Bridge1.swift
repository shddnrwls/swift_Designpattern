//
//  Bridge1.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//

import UIKit


protocol Car {
    func drive()
}
class Sedan: Car {
    func drive() {
        print("drive a sedan")
    }
}
class SUV: Car {
    func drive() {
        print("drive a SUV")
    }
}


protocol ColoredCar {
    var car: Car { get set }
    func drive()
}
class RedCar: ColoredCar {
    var car: Car
    init(car: Car) {
        self.car = car
    }
    func drive() {
        car.drive()
        print("It's red.")
    }
}
//usage
let sedan = Sedan()
let redSedan = RedCar(car: sedan)
//redSedan.drive()


