//
//  PhotoLib.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation

protocol PhotoLib {
    func printPhoto(_ fileName: String)
    func printPhotoList(_ listName:[String])
    func deletePhoto(_ fileName: String)
    func addPhoto(_ fileName: String)
    
    
}
