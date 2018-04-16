//
//  main.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//

import Foundation

let photoList: [String] = ["asd","wewewe"]
let lib: BLib = BLib()
let adapter: PhotoLib = PhotoAdapter(lib)
adapter.printPhoto("wewew")
adapter.printPhotoList(photoList)


