//
//  AlertDemoViewController.swift
//  ios-uikit-uialertcontroller-uialertaction-demo
//
//  Created by OkuderaYuki on 2017/04/24.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class AlertDemoViewController: UIViewController {

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Actions
extension AlertDemoViewController {
    
    // MARK: Using extension
    
    /// OKボタンのみのアラート
    @IBAction func didTapSingleButtonAlert1(_ sender: Any) {
        let alert = UIAlertController.singleButtonAlert(title: "タイトル", message: "OKボタンのみのサンプルです。") {
            print("OKがタップされました。")
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    /// OKボタン,Cancelボタンのアラート
    @IBAction func didTapDoubleButtonAlert1(_ sender: Any) {
        let alert = UIAlertController.doubleButtonAlert(title: "タイトル", message: "OK, Cancelボタンのサンプルです。",
                                                        completion: {
                                                            print("OKがタップされました。") },
                                                        cancelCompletion: {
                                                            print("Cancelがタップされました。") })
        
        self.present(alert, animated: true, completion: nil)
    }
    
    /// カスタムボタン1つのアラート
    @IBAction func didTapSingleButtonAlert2(_ sender: Any) {
        let alert = UIAlertController.singleButtonAlert(title: "", message: "カスタムボタン1つのサンプルです。", buttonTitle: "完了") {
            print("「完了」がタップされました。")
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    /// カスタムボタン2つのアラート
    @IBAction func didTapDoubleButtonAlert2(_ sender: Any) {
        let alert = UIAlertController.doubleButtonAlert(title: "",
                                                        message: "カスタムボタン2つのサンプルです。",
                                                        buttonTitle: "次へ",
                                                        cancelButtonTitle: "閉じる", completion: {
                                                            print("「次へ」がタップされました。")},
                                                        cancelCompletion: {
                                                            print("「閉じる」がタップされました。")})
        self.present(alert, animated: true, completion: nil)
    }
}
