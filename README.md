##简单封装系统AlertController 一句话自由组合

##### 集成
```
pod 'RAlert'

```


##### 用法


```
 AlertBuilder(context: self).title("提示").message("确定删除么").cancelTitle("取消").confirmTitle("确定").cancellAction ({ (UIAlertAction) in
            print("取消")
        }).confirmAction({ (UIAlertAction) in
             print("确定")
        }).build().showController()
        
         AlertBuilder(context: self).title("提示").message("已经删除么").cancelTitle("知道了").cancellAction ({ (UIAlertAction) in
            print("取消")
        }).build().showController()

```
#### 效果
![](https://github.com/roycehe/AlertController/blob/master/WX20170517-094654%402x.png)

![](https://github.com/roycehe/AlertController/blob/master/WX20170517-095827%402x.png)



