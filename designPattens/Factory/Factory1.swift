//
//  File.swift
//  designPattens
//
//  Created by mac on 2018. 2. 16..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation

protocol Unit {
    func attack()
}

class Marin: Unit{
    func attack() {
        print("마린이 공격한다")
    }
}

class Ghost: Unit{
    func attack() {
        print("고스트가 공격한다")
    }
}

class Medic: Unit{
    func attack() {
        print("마린이 치유합니다")
    }
}
enum Unit Type {
    case marin,medic, ghost
}
// 배럭에서 유닛을 생산한다 = 팩토리
class Barracks {
    func createUnit(type: UnitType) -> Unit {
        switch type {
        case .marin : return Marin()
        case .ghost : return Ghost()
        case .Medic : return Medic()
        }
    }
}

//메소드사용
let barrack = Barracks()
let unit = barrack.createUnit(type: .marin)
unit.attack()
