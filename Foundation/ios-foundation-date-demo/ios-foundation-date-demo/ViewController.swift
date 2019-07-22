//
//  ViewController.swift
//  ios-foundation-date-demo
//
//  Created by 本山功 on 2017/02/07.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInit()
        print(date)
        self.renderTimeIntervalSince()
    }
    
    // 現在日付を取得する
    private func setupInit(){
        date = Date.init()
    }

    // 現在日付に時間を追加する
    private func renderAddTimeInterval(){
        date.addTimeInterval(60 * 60 * 24)
        print(date)
    }
    
    // 現在日付に時間を追加し、追加した時間を戻す
    private func renderAddingTimeInterval(){
        print(date.addingTimeInterval(60 * 60 * 24 * 2))
    }
    
    // 引数で渡した日付が過去か未来かを列挙型で取得する
    private func renderCompare(){
        var otherDate = Date()
        otherDate.addTimeInterval(60 * 60 * 24)

        print(date.compare(otherDate).rawValue)
    }
    
    // 引数で渡した日付との差分を秒で取得する
    private func renderTimeIntervalSince(){
        var otherDate = Date()
        otherDate.addTimeInterval(60 * 60 * 24)
        print(date.timeIntervalSince(otherDate))
    }
    
}

