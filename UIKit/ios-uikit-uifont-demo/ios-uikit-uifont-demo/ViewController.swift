//
//  ViewController.swift
//  ios-uikit-uifont-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fonts()
        
        //フォント名、サイズを指定してポイント数をコンソールに表示
        var font = setupFont()
        font = setupWithSize(font: font)
        getPointSize(font: font)
        
        label.font = font
        label.sizeToFit()
    }

    /// 使用可能なフォントの配列を取得してコンソールに表示
    private func fonts() {
        let familyNames = self.getFamilyNames()
        
        for familyName in familyNames {
            print("familyName: \(familyName)")
            print(fontNames(forFamilyName: familyName))
            print("")
        }
    }
    
    /// 使用できるフォントファミリー名の一覧を取得する
    private func getFamilyNames() -> [String] {
        return UIFont.familyNames
    }
    
    /// フォントファミリー名を指定して、使用可能なフォント名の配列を取得する
    /// 存在しないフォントファミリー名が指定された場合は、空配列を返却する
    ///
    /// - Parameter forFamilyName: フォントファミリー名
    private func fontNames(forFamilyName: String) -> [String] {
        return UIFont.fontNames(forFamilyName: forFamilyName)
    }
    
    /// 現在のフォントサイズを取得してコンソールに表示
    private func getPointSize(font: UIFont) {
        print(font.pointSize)
    }
    
    /// フォントを指定する
    private func setupFont() -> UIFont {
        // 指定したフォント名が存在しなかった場合は、systemFontを使用するようにしておく
        return UIFont(name: "HiraginoSans-W3", size: 20) ?? UIFont.systemFont(ofSize: 20)
    }
    
    /// フォントをボールドに変更する
    private func setupBold() -> UIFont {
        return UIFont.boldSystemFont(ofSize: 20)
    }

    /// フォントをイタリックに変更する
    private func setupItalic() -> UIFont {
        return UIFont.italicSystemFont(ofSize: 20)
    }
    
    /// フォントサイズを変更する
    private func setupWithSize(font: UIFont) -> UIFont {
        return font.withSize(CGFloat( 30 ))
    }
}
