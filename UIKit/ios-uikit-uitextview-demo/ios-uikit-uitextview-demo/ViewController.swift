//
//  ViewController.swift
//  ios-uikit-uitextview-demo
//
//  Created by k_motoyama on 2017/03/01.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupText()
        setupTextColor()
        setupTextFont()
        setupAlignment()
        setupEditable()
        setupDateDetectorType()
        
    }

    // 表示するテキストを設定する
    public func setupText(){
        textView.text = "testtesttesttesttest https://www.google.co.jp/ testtesttesttesttesttesttest 000-0000 2017/12/24 testtesttesttesttesttesttesttesttesttesttesttest"
    }

    // 表示するテキストの色を設定する
    public func setupTextColor(){
        textView.textColor = UIColor.red
    }
    
    // 表示するテキストのフォントを設定する
    public func setupTextFont(){
        textView.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    // 表示するテキストの位置を設定する
    public func setupAlignment(){
        textView.textAlignment = NSTextAlignment.center
    }
    
    // テキストを編集できるか設定する
    public func setupEditable(){
        textView.isEditable = false
    }
    
    // テキスト内に特定の文字がある場合、抽出してリンクに変換する
    public func setupDateDetectorType(){
        textView.dataDetectorTypes = .all
    }
    

}

