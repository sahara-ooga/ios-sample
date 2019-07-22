//
//  ViewController.swift
//  ios-uikit-uialertcontroller-uialertaction-demo
//
//  Created by Kentaro on 2017/02/17.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    /// アラート
    let alert = UIAlertController(title: "タイトル",
                                  message: "本文",
                                  preferredStyle: .alert)
    /// アクションシート
    let actionSheet = UIAlertController(title: "タイトル",
                                        message: "本文",
                                        preferredStyle: .actionSheet)
    
    /// キャンセルアクション（１つしかセットできない。キャンセル用）
    let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { _ in print("cancel") }
    
    /// デフォルトアクション（複数セット可能。通常のアクションはこちらを選択する）
    let defaultAction = UIAlertAction(title: "default", style: .default) { _ in print("default") }
    
    /// ディストラクティブ（複数セット可能。アクションによってデータに破壊的な変更が発生する可能性あり）
    let destructiveAction = UIAlertAction(title: "destructive", style: .destructive) { _ in print("destructive") }
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension ViewController {
    
    // MARK: - Setup
    
    func setup() {
        // アラートにアクションをセットする
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        // defaultActionを強調表示にする
        if #available(iOS 9.0, *) {
            alert.preferredAction = defaultAction
        } else {
            print("iOS9未満です")
        }
        
        // アクションシートにアクションをセットする
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(defaultAction)
        actionSheet.addAction(destructiveAction)
    }
    
    // MARK: - Actions
    
    @IBAction func didTapAlet(_ sender: UIButton) {
        // アラートを表示する
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didTapActionSheet(_ sender: UIButton) {
        // アクションシートを表示する
        present(actionSheet, animated: true, completion: nil)
    }
}
