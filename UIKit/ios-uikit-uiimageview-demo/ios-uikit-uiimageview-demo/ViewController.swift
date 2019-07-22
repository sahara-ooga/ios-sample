//
//  ViewController.swift
//  ios-uikit-uiimageview-demo
//
//  Created by Kentaro on 2017/02/16.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet fileprivate weak var imageView: UIImageView!
    @IBOutlet fileprivate weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
        addGestureRecognizer()
        
        /*
         UIViewContentModeのデフォルト値
         　↓
         scaleToFill：アスペクト比を変更してviewのサイズにフィットさせる
         */
        //configureScaleAspectFit()
        configureScaleAspectFill()
        
        //superviewのサイズで切り取る
        //configureClipsToBounds()
        configureMasksToBounds()
    }
}

extension ViewController{
    fileprivate func setupSubView() {
        subView.layer.borderWidth = 1.0
        subView.layer.borderColor = UIColor.blue.cgColor
        subView.layer.cornerRadius = 10.0
    }
    
    // MARK: - option
    
    // 画像を設定する
    fileprivate func configureImage() {
        imageView.image = #imageLiteral(resourceName: "kobaton")
        imageView.highlightedImage = #imageLiteral(resourceName: "stv")
    }
    
    // imageViewにタップイベントを設定する
    fileprivate func addGestureRecognizer() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: .tapGesture)
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    // タップでhighlitedを切り替える
    func tapGesture(sender:UITapGestureRecognizer){
        print("tapped imageView")
        imageView.isHighlighted = !imageView.isHighlighted
    }
    
    /*
     アスペクト比を維持してviewのサイズにフィットさせる（Storyboardで設定可能）
     画像がviewのサイズより小さくなることもある
     */
    fileprivate func configureScaleAspectFit() {
        imageView.contentMode = .scaleAspectFit
    }
    
    /*
     アスペクト比を維持してviewのサイズいっぱいに表示する（Storyboardで設定可能）
     viewから画像がはみ出ることもある
     */
    fileprivate func configureScaleAspectFill() {
        imageView.contentMode = .scaleAspectFill
    }
    
    /*
     configureScaleAspectFill()を実行 または 
     StoryboardでimageViewのContentModeをAspectFill にしてから
     下記メソッドを実行すること
     */
    
    /*
     画像がviewからはみ出さないようにするには、土台のview側を設定する
     */
    // 画像がviewからはみ出た部分を表示しないようにする①（Storyboardで設定可能）
    func configureClipsToBounds() {
        subView.clipsToBounds = true
    }
    
    // 画像がviewからはみ出た部分を表示しないようにする②
    fileprivate func configureMasksToBounds() {
        subView.layer.masksToBounds = true
    }
}

// MARK: - SecondViewControllerの独自Selectorを作成
private extension Selector {
    static let tapGesture = #selector(ViewController.tapGesture(sender:))
}

