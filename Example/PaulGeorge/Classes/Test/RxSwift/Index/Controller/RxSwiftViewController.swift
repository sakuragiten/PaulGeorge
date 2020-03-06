//
//  RxSwiftViewController.swift
//  PaulGeorge_Example
//
//  Created by gongsheng on 2020/3/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit


class RxSwiftViewController: UIViewController {

    
    var viewModel : RxViewModel = RxViewModel()
    var tableView : UITableView = UITableView(frame: CGRect.zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    

    func setupUI() {
        
        self.title = "RxSwift"
        self.view.backgroundColor = .white
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.leading.bottom.trailing.equalToSuperview()
        }
    }

}



extension RxSwiftViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = viewModel.testArray[indexPath.row]
        let c = self.getClassFromString(model.className) as! UIViewController.Type
        let vc = c.init()
        vc.title = model.title;
        view.backgroundColor = UIColor.random()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension RxSwiftViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.testArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let model = viewModel.testArray[indexPath.row]
        cell.textLabel?.text = model.title
        return cell
    }
    
}
