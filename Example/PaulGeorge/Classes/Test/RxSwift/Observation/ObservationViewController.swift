//
//  ObservationViewController.swift
//  PaulGeorge_Example
//
//  Created by gongsheng on 2020/3/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {

    let btn = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    
        
    }
    

    func setupUI() {
        self.view.backgroundColor = .white
        
        btn.backgroundColor = .random()
        btn.titleLabel?.textColor = .white
        btn.setTitle("Test", for: .normal)
        
        btn.addTarget(self, action: #selector(testObervation), for: .touchUpInside)
        
        self.view.addSubview(btn)
        
        btn.snp.makeConstraints { (make) in
            make.top.leading.equalTo(90)
            make.width.height.equalTo(100)
        }
    }
}



// observation
extension ObservationViewController {
    
    @objc func testObervation() {
        for i in 0..<10 {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5.0 * Double(i)) {
                print("value = " + "\(i)" + " time = \(DispatchTime.now().rawValue)");
            }
        }
        
    }
    
}
