//
//  NibCustomizedView.swift
//  ios-uikit-uinib-demo
//
//  Created by ogasawara on 2020/10/30.
//

import UIKit

/// Storyboard上にcustom classで指定
/// View内のパーツはxibファイルで定義している例
/// xibファイルのFile's ownerに指定する
/// この場合でもIBDesignableでプレビュー可能
/// IBActionはxib上でバインディングを設定できる
@IBDesignable
class NibCustomizedView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        configureView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        configureView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configureView()
    }

    func configureView() {
        loadNib()
    }

    func loadNib() {
        let nib = UINib(nibName: "NibCustomizedView", bundle: Bundle(for: type(of: self)))
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = self.bounds
        self.addSubview(view)

    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("tapped!")
    }


}
