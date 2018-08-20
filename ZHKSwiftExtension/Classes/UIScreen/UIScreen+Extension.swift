//
//  UIScreen+Extension.swift
//  Feedback
//
//  Created by ZHK on 2018/8/20.
//  Copyright © 2018年 ZHK. All rights reserved.
//

import UIKit


extension UIScreen {
    
    class func bounds() -> CGRect {
        return UIScreen.main.bounds
    }
    
    class func size() -> CGSize {
        return bounds().size
    }
    
    class func width() -> CGFloat {
        return size().width
    }
    
    class func height() -> CGFloat {
        return size().height
    }
    
    class func scaleX() -> CGFloat {
        return width() / 375.0
    }
    
    class func scaleY() -> CGFloat {
        return height() / 667.0
    }
}
