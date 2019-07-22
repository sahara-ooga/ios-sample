//
//  SecondViewController.swift
//  ios-uikit-uiviewcontroller
//
//  Created by OkuderaYuki on 2017/03/07.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // xibファイルを指定する
        let view = UINib(nibName: "Second", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = self.view.frame
        self.view.addSubview(view)
    }
}
