//
//  ViewController.swift
//  ios-uikit-uiscreen-demo
//
//  Created by Eiji Kushida on 2017/02/22.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightButton: UIButton!

    // MARK: - view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderScreenSize()
        
        let brightnessValue = UIScreen.main.brightness
        print("変更前の画面輝度: \(brightnessValue)")
    }
    
    /// 画面サイズを表示する
    private func renderScreenSize() {
        print(UIScreen.screenSize())
        print("高さ: \(UIScreen.screenHeight())")
        print("幅: \(UIScreen.screenWidth())")
    }
    
    // MARK: - action
    
    @IBAction func didTapLightButton(_ sender: Any) {
        
        if lightButton.isSelected {
            UIScreen.main.brightness = 0.3
        } else {
            UIScreen.main.brightness = 0.6
        }
        lightButton.isSelected = !lightButton.isSelected
    }
}

