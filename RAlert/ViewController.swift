//
//  ViewController.swift
//  RAlert
//
//  Created by 何晓文 on 2017/5/17.
//  Copyright © 2017年 何晓文. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var car = "Benz"
        let closure = { [car] in
            print("I drive \(car)")
        }
        car = "Tesla" 
        closure()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
   
       AlertBuilder(context: self).title("提示").message("确定删除么").cancelTitle("取消").confirmTitle("确定").cancellAction ({ (UIAlertAction) in
            print("取消")
        }).confirmAction({ (UIAlertAction) in
             print("确定")
        }).build().showController()
    }
    func add(_ num: Int) -> (Int) -> Int {
        return { a in
            return num + a
        }
    }
    
   

}

