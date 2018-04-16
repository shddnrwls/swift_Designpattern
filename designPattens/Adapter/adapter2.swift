//
//  adapter2.swift
//  designPattens
//
//  Created by mac on 2018. 2. 10..
//  Copyright © 2018년 swift. All rights reserved.
//



let photoList: []
let photoList: [String] = ["aaa","bbb"]
let lib: BLib = BLib()
let adapter: PhotoLib = PhotoAdapter(lib)

adapter.printPhoto("asd")

