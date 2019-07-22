//
//  ViewController.swift
//  ios-uikit-uibutton-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        setupTitleColor()
        getCurrentTitle()
        setupImage()
    }
    
    // 現在表示されているタイトルを取得する
    private func getCurrentTitle(){
        print(button.currentTitle!)
    }
    
    // ボタンのタイトルを設定する
    private func setupTitle(){
        button.setTitle("ボタン", for: .normal)
    }
    
    // ボタンのタイトルの色を設定する
    private func setupTitleColor(){
        button.setTitleColor(UIColor.red, for: .normal)
    }
    
    // ボタンのタイトルの影を設定する
    private func setupTitleShadowColor(){
        button.setTitleShadowColor(UIColor.gray, for: .normal)
        button.titleLabel!.shadowOffset = CGSize(width: 3, height: 3)

    }
    
    // ボタンに表示する画像を設定する
    private func setupImage(){
        let image = UIImage(named:"apple.png")
        button.setImage(image, for: .normal)
        button.sizeToFit()
        button.center = self.view.center
    }

    @IBAction func didTapButton(_ sender: UIButton) {

        print("処理前タイトル: \(sender.currentTitle!)")

        sender.isSelected = !sender.isSelected

        if sender.isSelected {
            sender.setTitle("On", for: .normal)
        } else {
            sender.setTitle("Off", for: .normal)
        }

        print("処理後タイトル: \(sender.currentTitle!)")
    }
}

