//
//  adapter1.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//
import UIKit
//추상클래스 (메소드 선언만해줌)

protocol PhotoLib {
    func printPhoto(_ fileName: String)
    func printPhotoList(_ listName:[String])
    func deletePhoto(_ fileName: String)
    func addPhoto(_ fileName: String)


}
class ALib{
    func printPhoto(_ fileName: String){}
    func printPhotoList(_ listName:[String]){}
    func deletePhoto(_ fileName: String){}
    func addPhoto(_ fileName: String){}


}
class BLib{
    func printPhoto(_ fileName: String){
        print(fileName)
    }
    func deletePhoto(_ fileName: String){}
    func addPhoto(_ fileName: String){}
}
//어댑터 생성
class PhotoAdapter: PhotoLib {

    let lib: BLib   //라이브러리 변경시 이부분만 ALib로바꿔주면댐
    init(_ lib: BLib){  //라이브러리 변경시 이부분만 ALib로바꿔주면댐
        self.lib = lib
    }
    func printPhoto(_ fileName: String) {
        lib.printPhoto(fileName)
    }
    func printPhotoList(_ listName: [String]) {
        for photo in listName{
            self.lib.printPhoto(photo)
        }
    }
    func deletePhoto(_ fileName: String) {
        lib.deletePhoto(fileName)
    }
    func addPhoto(_ fileName: String) {
        lib.addPhoto(fileName)
    }
}
//호출
let photoList: [String] = ["aaa","bbb"]
let lib: BLib = BLib()//어떤라이브러리 사용할건지정함
let adapter: PhotoLib = PhotoAdapter(lib)















