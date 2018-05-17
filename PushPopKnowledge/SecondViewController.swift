//
//  SecondViewController.swift
//  PushPopKnowledge
//
//  Created by ZZJ on 2018/5/17.
//  Copyright © 2018年 ZHONG ZHAOJUN. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "第二页"
        
        let btn = UIButton(type: .custom)
        btn.setTitle("下一页", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.orange
        btn.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
        btn.frame = CGRect(x: 100, y: 300, width: UIScreen.main.bounds.size.width - 100 * 2, height: 30)
        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func clickAction() {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
