//
//  PhotoAdapter.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation

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
