//
//  ViewController.swift
//  ZHKSwiftExtension
//
//  Created by 389914070@qq.com on 08/20/2018.
//  Copyright (c) 2018 389914070@qq.com. All rights reserved.
//

import UIKit
import ZHKSwiftExtension

class ViewController: UIViewController {
    
    var list: [String] = [
        "生成二维码"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let vc = ImageViewController()
            vc.image = "312331233123312331233123312331233123".data(using: .utf8)?.QRCodeImage(size: 400)
            navigationController?.pushViewController(vc, animated: true)
        default: break
        }
    }
}
