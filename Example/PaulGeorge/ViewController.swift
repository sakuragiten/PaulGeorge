//
//  ViewController.swift
//  PaulGeorge
//
//  Created by lx_fireloli on 04/12/2019.
//  Copyright (c) 2019 lx_fireloli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //test
        
        self.setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI() {
    
        self.view.backgroundColor = UIColor.random()
        
    }

}

