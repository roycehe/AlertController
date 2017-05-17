//
//  AlertBuilder.swift
//  RAlert
//
//  Created by 何晓文 on 2017/5/17.
//  Copyright © 2017年 何晓文. All rights reserved.
//

import UIKit

class AlertBuilder: NSObject {
    
    var params : AlertParams?
    
    init(context : ViewController) {
        super.init()
        params = AlertParams(context: context)
        self.params?.context = context
        
    }
    func title(_ title : String) -> AlertBuilder {
        self.params?.title = title
        
        return self
    }
    func message(_ message : String) -> AlertBuilder {
        self.params?.message = message
        
        return self
    }
    func confirmTitle(_ confirmTitle : String) -> AlertBuilder {
        self.params?.confirmTitle = confirmTitle
        
        return self
    }
    func cancelTitle(_ cancelTitle : String) -> AlertBuilder {
        self.params?.cancelTitle = cancelTitle
        
        return self
    }
    func confirmAction(_ confirmAction : ((UIAlertAction) -> Swift.Void)? = nil) -> AlertBuilder {
        self.params?.confirmHandler = confirmAction
        
        return self
    }
    func cancellAction(_ cancellAction : ((UIAlertAction) -> Swift.Void)? = nil) -> AlertBuilder {
        self.params?.cancelHandler = cancellAction
        
        return self
    }
    func build() -> RAlertController {
        
        let alert = RAlertController(builder: self)
        return alert
    }
}
