//
//  RAlertController.swift
//  RAlert
//
//  Created by 何晓文 on 2017/5/17.
//  Copyright © 2017年 何晓文. All rights reserved.
//

import UIKit

class RAlertController : NSObject {
    
    var builder : AlertBuilder?
    init(builder : AlertBuilder){
        super.init()
        self.builder = builder

    }
    func showController() {
        let alert = UIAlertController(title: self.builder?.params?.title, message: self.builder?.params?.message, preferredStyle: UIAlertControllerStyle.alert)
        //添加确定按钮
        if let confirmStr =  self.builder?.params?.confirmTitle {
            alert.addAction(UIAlertAction(title: confirmStr, style: UIAlertActionStyle.destructive, handler: self.builder?.params?.confirmHandler))
        }
        //添加取消按钮
        if let cancelStr =  self.builder?.params?.cancelTitle {
            alert.addAction(UIAlertAction(title: cancelStr, style: UIAlertActionStyle.cancel, handler: self.builder?.params?.cancelHandler))
        }
        //显示
        self.builder?.params?.context?.present(alert, animated: true, completion: nil)
    }

}
