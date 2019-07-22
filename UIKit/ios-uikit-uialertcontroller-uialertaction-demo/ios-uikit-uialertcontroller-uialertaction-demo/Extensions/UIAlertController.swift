//
//  UIAlertController.swift
//  ios-uikit-uialertcontroller-uialertaction-demo
//
//  Created by OkuderaYuki on 2017/04/24.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    // MARK: - Alert
    
    /// ボタン1つのアラート
    ///
    /// - Parameters:
    ///   - title: タイトル
    ///   - message: メッセージ
    ///   - buttonTitle: ボタンのタイトル(default: "OK")
    ///   - completion: ボタンタップ時の処理
    /// - Returns: UIAlertControllerのインスタンス
    class func singleButtonAlert(title: String,
                                 message: String,
                                 buttonTitle: String = "OK",
                                 completion: (() -> Void)?) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action: UIAlertAction!) -> Void in
            if let completion = completion {
                completion()
            }
        }))
        return alert
    }
    
    /// ボタン2つのアラート
    ///
    /// - Parameters:
    ///   - title: タイトル
    ///   - message: メッセージ
    ///   - buttonTitle: ボタンのタイトル(default: "OK")
    ///   - cancelButtonTitle: キャンセルボタンのタイトル(default: "Cancel")
    ///   - completion: ボタンタップ時の処理
    ///   - cancelCompletion: キャンセルボタンタップ時の処理
    /// - Returns: UIAlertControllerのインスタンス
    class func doubleButtonAlert(title: String,
                                 message: String,
                                 buttonTitle: String = "OK",
                                 cancelButtonTitle: String = "Cancel",
                                 completion: (() -> Void)?,
                                 cancelCompletion: (() -> Void)?) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action: UIAlertAction!) -> Void in
            if let completion = completion {
                completion()
            }
        }))
        
        alert.addAction(UIAlertAction(title: cancelButtonTitle, style: .cancel, handler: { (action: UIAlertAction!) -> Void in
            if let cancelCompletion = cancelCompletion {
                cancelCompletion()
            }
        }))
        return alert
    }
    
    // MARK: - ActionSheet
}
