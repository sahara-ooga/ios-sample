//
//  UIScreen+Size.swift
//  ios-uikit-uiscreen-demo
//
//  Created by Eiji Kushida on 2017/02/22.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

extension UIScreen {

    /// 画面のサイズを取得する
    /// UIScreen.main.applicationFrameは、iOS9から廃止
    static func screenSize() -> CGRect {
        return UIScreen.main.bounds
    }

    /// 画面サイズ（高さ）を取得する
    static func screenHeight() -> CGFloat {
        return screenSize().height
    }
    
    /// 画面サイズ（幅）を取得する
    static func screenWidth() -> CGFloat {
        return screenSize().width
    }
}
