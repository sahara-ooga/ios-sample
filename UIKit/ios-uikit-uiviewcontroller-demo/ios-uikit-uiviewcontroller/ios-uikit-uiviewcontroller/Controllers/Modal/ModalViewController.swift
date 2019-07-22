//
//  ModalViewController.swift
//  ios-uikit-uiviewcontroller
//
//  Created by OkuderaYuki on 2017/03/08.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Modal表示した遷移元のViewControllerを取得してログに出力する
        print("\(String(describing: self.presentingViewController))")
    }
    
    /// BackボタンタップでModalを閉じて繊維元に戻る
    @IBAction func tappedBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
