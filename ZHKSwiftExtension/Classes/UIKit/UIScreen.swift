//
//  UIScreen+Extension.swift
//  ZHKSwiftExtension
//
//  Created by ZHK on 2018/8/20.
//  Copyright © 2018年 ZHK. All rights reserved.
//

import UIKit


extension UIScreen {
    
    public class func bounds() -> CGRect {
        return UIScreen.main.bounds
    }
    
    public class func size() -> CGSize {
        return bounds().size
    }
    
    public class func width() -> CGFloat {
        return size().width
    }
    
    public class func height() -> CGFloat {
        return size().height
    }
    
    public class func scaleX() -> CGFloat {
        return width() / 375.0
    }
    
    public class func scaleY() -> CGFloat {
        return height() / 667.0
    }
}
