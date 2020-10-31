# UIView

## 概要
UIViewは、画面にViewを表示する際に利用します。 
また、 多くのUIパーツの親クラスになっています。

## 関連クラス
UIResponder

## 実装手順
1. Storyboardを利用して、UIViewをドラッグ&ドロップして配置します。
2. UIViewとUIViewControllerを関連付けします。
3. 必要に応じて、プロパティやメソッドを利用します。

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| subviews |  [UIView] { get } <br> 直下のサブビューの配列.配列の順番と重なりが対応している.indexが０のビューが一番後ろになる. | `view.subviews[0]` |
|backgroundColor | 背景色を設定する（Storyboard可） | `view.backgroundColor = UIColor.blue` |
|isHidden | 表示・非表示を設定する（Storyboard可） | `view.isHidden = true // 非表示` |
|alpha | アルファ値を設定する（0.0=透明, 1.0=不透明）（Storyboard可） | `view.alpha = 0.0` |
|clipsToBounds | subViewがはみ出たら非表示にする（Storyboard可） | `view.clipsToBounds = true` |
|layer | CALayerプロパティ（レイヤに対して設定をする） | `view.layer.borderWidth = 1.0`|
|isExclusiveTouch | 同時押しを禁止する（デフォルト=false：同時押し可） | `view.isExclusiveTouch = true`|
|tag | Viewを識別するためのタグ（デフォルト=0）（Storyboard可） | `view.tag = 1`|
|contentMode | レイアウトを決める | //中央に配置 <br>`imageView.contentMode = .center` |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
| addSubview(_ view: UIView) | subViewを追加する  |`view.addSubView(demoView)`  |
| removeFromSuperview() | 親ViewからsubViewを取り除く  |`viewWhichWillBeRemoved.removeFromSuperview()`  |

## フレームワーク

UIKit.framework

## サポートOSバージョン

iOS2.0以上

## 開発環境

| category | Version |
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uiview

### CALayer関連
- https://developer.apple.com/documentation/quartzcore/calayer
- [ios ViewとLayerの関係](https://www.indetail.co.jp/blog/ios-view-layer/)
- [CALayer概要](http://qiita.com/ykyouhei/items/bbec22eb104f5cdf7a6f)
- [CALayer を使って UIImage を描画する](http://akisute.com/2010/08/calayer-uiimage.html)
- [CALayerをビューに追加したときの順番について](http://obc-fight.blogspot.jp/2012/09/CALayer-add-layer-order.html)

