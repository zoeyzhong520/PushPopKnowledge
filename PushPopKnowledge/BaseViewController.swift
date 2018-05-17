//
//  BaseViewController.swift
//  PushPopKnowledge
//
//  Created by ZZJ on 2018/5/17.
//  Copyright © 2018年 ZHONG ZHAOJUN. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var dict = [String : Any]()
    
    var isPrint = false //是否需要打印
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setPage()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        if isPrint {
            let tempFile = (#file as NSString).lastPathComponent
            print("\(tempFile) -- \(#function) -- \(#line): \(dict)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension BaseViewController {
    
    fileprivate func setPage() {
        
        self.view.backgroundColor = UIColor.white
        
        self.navigationController?.navigationBar.barStyle = .black
        
        self.navigationController?.navigationBar.barTintColor = UIColor.black
    }
}












