//
//  UIColor+Extension.swift
//  Feedback
//
//  Created by ZHK on 2018/8/20.
//  Copyright © 2018年 ZHK. All rights reserved.
//

import UIKit

extension UIColor {
    
    public class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }
    
    public class func debug() -> UIColor {
        return UIColor.rgba(CGFloat(arc4random() % 256), CGFloat(arc4random() % 256), CGFloat(arc4random() % 256), 1)
    }
}
