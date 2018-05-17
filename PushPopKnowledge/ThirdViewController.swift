//
//  ThirdViewController.swift
//  PushPopKnowledge
//
//  Created by ZZJ on 2018/5/17.
//  Copyright © 2018年 ZHONG ZHAOJUN. All rights reserved.
//

import UIKit

class ThirdViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "第三页"
        
        let btnNameArray = ["返回根视图", "返回到第一页", "返回到第二页"]
        for i in 0..<btnNameArray.count {
            let btn = UIButton(type: .custom)
            btn.setTitle(btnNameArray[i], for: .normal)
            btn.setTitleColor(UIColor.white, for: .normal)
            btn.backgroundColor = UIColor.purple
            btn.tag = i
            btn.addTarget(self, action: #selector(clickAction(btn:)), for: .touchUpInside)
            btn.frame = CGRect(x: 100, y: 200 + 60 * CGFloat(i), width: UIScreen.main.bounds.size.width - CGFloat(100 * 2), height: 30)
            self.view.addSubview(btn)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func clickAction(btn: UIButton) {
        
        guard let viewControllers = self.navigationController?.viewControllers else { return }
        
        for vc in viewControllers {
            
            switch btn.tag {
            case 0:
                if vc.isKind(of: ViewController.classForCoder()) {
                    let VC = vc as! ViewController
                    VC.isPrint = true
                    VC.dict = ["ViewController" : "ViewController"]
                    //返回根视图
                    self.navigationController?.popToRootViewController(animated: true)
                }
            case 1:
                if vc.isKind(of: FirstViewController.classForCoder()) {
                    let VC = vc as! FirstViewController
                    VC.isPrint = true
                    VC.dict = ["FirstViewController" : "FirstViewController"]
                    //返回到第一页
                    self.navigationController?.popToViewController(VC, animated: true)
                }
            case 2:
                if vc.isKind(of: SecondViewController.classForCoder()) {
                    let VC = vc as! SecondViewController
                    VC.dict = ["SecondViewController" : "SecondViewController"]
                    //返回到第二页
                    self.navigationController?.popToViewController(VC, animated: true)
                }
            default:
                break
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
