//
//  ImageViewController.swift
//  ZHKSwiftExtension_Example
//
//  Created by ZHK on 2021/2/23.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import ZHKSwiftExtension

class ImageViewController: UIViewController {
    
    public var image: UIImage? {
        didSet {
//            print(image)
            imageView.image = image
//            imageView.image = UIImage(data: image!.pngData()!)
        }
    }
    
    private let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if #available(iOS 11.0, *) {
            imageView.frame = view.bounds - view.safeAreaInsets
        } else {
            imageView.frame = view.bounds
        }
    }
    
    override func viewSafeAreaInsetsDidChange() {
        if #available(iOS 11.0, *) {
            super.viewSafeAreaInsetsDidChange()
            imageView.frame = view.bounds - view.safeAreaInsets
        }
    }
}
