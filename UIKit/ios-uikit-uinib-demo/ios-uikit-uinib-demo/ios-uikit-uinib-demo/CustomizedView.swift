//
//  CustomizedView.swift
//  ios-uikit-uinib-demo
//
//  Created by ogasawara on 2020/10/30.
//

import UIKit

/// 内部のパーツはすべてコード上で生成
/// Main.storyboardでViewを追加し、Custom ClassにCustomizedViewを設定する
/// このViewの位置・ConstraintsはMain.storyboardのGUIから設定する
/// IBDesignableの指定をしたので、コード上の変更はMain.storyboardのファイル表示に反映される
@IBDesignable
class CustomizedView: UIView {
    private struct Const {
        static let subviewFrame = CGRect(x: 10, y: 10, width: 300, height: 150)
        static let labelFrame = CGRect(x: 10, y: 10, width: 220, height: 30)
    }

    // コードで初期化する場合
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeView()
    }

    // xibを使用する場合
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // xibを使用した場合に呼ばれる
    override func awakeFromNib() {
        super.awakeFromNib()
        initializeView()
    }

    private func initializeView() {
        let subview = UIView(frame: Const.subviewFrame)
        subview.backgroundColor = .red
        addSubview(subview)

        let label = UILabel(frame: Const.labelFrame)
        label.text = "foo"
        label.backgroundColor = .clear
        subview.addSubview(label)
        
        do {
            subview.translatesAutoresizingMaskIntoConstraints = false
            
            subview.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
            subview.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
            subview.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            subview.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        }
        do {
            // labelにAutolayoutを指定し、
            //  親Viewと水平方向の中心を合わせる
            //  垂直方向は親ビューの上辺から10pt下げて設定
            label.translatesAutoresizingMaskIntoConstraints = false
            
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
            
        }
    }

}
