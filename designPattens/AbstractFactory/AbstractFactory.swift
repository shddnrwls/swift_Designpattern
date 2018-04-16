//
//  AbstractFactory.swift
//  designPattens
//
//  Created by mac on 2018. 2. 16..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation
protocol Unit {
    var name: String{ get set }
    func attack(target: Unit)
}

class Zergling: Unit{
    var name: String = "저글링"
    func attack(target: Unit) {
        print("저글링 \(target.name) 공격")
    }
}

class Ultra: Unit{
    var name: String = "울트라"
    func attack(target: Unit) {
        print("울트라 \(target.name) 공격")
    }
}

class Marin: Unit{
    var name: String = "마린"
    func attack(target: Unit) {
        print("마린 \(target.name) 공격")
    }
}

class Tank: Unit{
    var name: String = "탱크"
    func attack(target: Unit) {
        print("탱크 \(target.name) 공격")
    }
}

enum UnitType {
    case marin,tank,zergling,ultra
    
}
protocol Race {
    func createUnit(type: UnitType) -> Unit?
    func constructBuilding()
}
class Terran : Race {
    func createUnit(type: UnitType) ->  Unit? {
        switch type {
            case .marin return Marin()
            case .tank return Tank()
        default: return nil
        }
    }
    func constructBuilding() {
        <#code#>
    }
}
class Zerg : Race {
    func createUnit(type: UnitType) ->  Unit? {
        switch type {
        case .zergling return Zergling()
        case .ultra return Ultra()
        default: return nil
        }
    }
    func constructBuilding() {
        <#code#>
    }
}
//위처럼 선언하게되면 팩톨만 바꿔가며 동일하게 객체를 생성하고 사용할 수 있다.공장마다 생성되는 객체가다르다.

