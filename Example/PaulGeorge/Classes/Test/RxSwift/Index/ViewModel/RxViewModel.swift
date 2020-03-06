//
//  RxViewModel.swift
//  PaulGeorge_Example
//
//  Created by gongsheng on 2020/3/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class RxViewModel: NSObject {
    lazy var testArray : [TestModel] = [
        TestModel.init("Performing side effects with event streams", "ObservationViewController")
    ];
}
