//
//  MainViewModel.swift
//  PaulGeorge_Example
//
//  Created by gongsheng on 2020/3/2.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class MainViewModel: NSObject {
    
    lazy var testArray : [TestModel] = [
        TestModel.init("RxSwift", "RxSwiftViewController"),
        TestModel.init("SwiftUI", "SwiftUIController")
    ];
    

}
