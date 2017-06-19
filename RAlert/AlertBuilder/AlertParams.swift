//
//  AlertParams.swift
//  RAlert
//
//  Created by 何晓文 on 2017/5/17.
//  Copyright © 2017年 何晓文. All rights reserved.
//

import UIKit

class AlertParams: NSObject {
    //负责展示的VC
    var context : UIViewController?
    //标题
    var title : String?
     //消息
    var message : String?
    //确认文本
    var confirmTitle : String?
    //取消文本
    var cancelTitle : String?
    
    //确定回调闭包
    var confirmHandler : ( (UIAlertAction) -> Swift.Void)?
    //取消闭包
    var cancelHandler : ((UIAlertAction) -> Swift.Void)?
    
    init(context : UIViewController) {
        super.init()
        self.context = context
        
    }
    
    
    
    
    
    

    
    

}
