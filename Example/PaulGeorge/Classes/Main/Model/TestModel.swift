//
//  TestModel.swift
//  PaulGeorge_Example
//
//  Created by gongsheng on 2020/3/2.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class TestModel: NSObject {
    var title : String = ""
    var className : String = ""
}

extension TestModel {
    convenience init(_ title: String, _ className: String) {
        self.init()
        self.title = title
        self.className = className
    }
}

    
