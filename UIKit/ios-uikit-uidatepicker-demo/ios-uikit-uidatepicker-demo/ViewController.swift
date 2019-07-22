//
//  ViewController.swift
//  ios-uikit-uidatepicker-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLocale()
        getLocal()
        setupDate()
        setupMaxDate()
        setupMinDate()
        setMinuteInterval()
    }
    
    // ロケールを設定する
    private func setupLocale(){
        datePicker.locale = Locale(identifier: "ja_JP")
    }
    
    // ロケールを取得する
    private func getLocal(){
        print(datePicker.locale!)
    }
    
    // 指定した日付にDatePickerを移動させる
    private func setupDate(){
        var date = Date()
        date.addTimeInterval(60 * 60 * 24)
        datePicker.setDate(date, animated: false)
    }
    
    // 移動できる最大の日時を設定する
    private func setupMaxDate(){
        var maxDate = Date()
        maxDate.addTimeInterval(60 * 60 * 24 * 10)
        datePicker.maximumDate = maxDate
    }
    
    // 移動できる最小の日時を設定する
    private func setupMinDate(){
        var minDate = Date()
        minDate.addTimeInterval(-1 * 60 * 60 * 24 * 20)
        datePicker.minimumDate = minDate
    }
    
    // 分の表示間隔を設定する
    private func setMinuteInterval(){
        datePicker.minuteInterval = 30
    }
    
    // DatePickerの表示形式を変更する
    private func setDatePickerMode(){
        datePicker.datePickerMode = UIDatePickerMode.time
    }

}

