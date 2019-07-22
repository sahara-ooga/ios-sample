# UIStackView

## 概要
UIStackViewは、配下のViewのレイアウトを調整します。<br>
配下のViewの位置、サイズを自動的に決定します。


## 関連クラス
UIView

## 主要プロパティ

|プロパティ名|説明|列挙体の値|サンプル|
|:---:|---|:---|---|
|`axis` | ビューを並べる方向を設定する |`.horizontal`(デフォルト)<br>`.vertical`|`UIStackView.axis = .vertical` |
|`spacing` | ビュー同士の間隔を設定する |-|`UIStackView.spacing = 5` |
|`distribution` | 軸に沿ったビューの配置方法を設定する |`.fill`<br>`.fillEqually`<br>`.fillProportionally`<br>`.equalSpacing`<br>`.equalCentering`|`UIStackView.distribution = .fillEqually` |
| `alignment` | 軸と垂直方向のビューの配置方法を設定する |`.fill`<br>`.leading`<br>`.top`<br>`.firstBaseline`<br>`.center`<br>`.trailing`<br>`.bottom`<br>`.lastBaseline` | `UIStackView.distribution = .fillEqually` |
| `arrangedSubviews` | stackviewが管理するサブビューの配列 |-| stackView. arrangedSubviews =  |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|`addArrangedSubview` | stackviewにviewを追加する | `stackView.addArrangedSubview(view)` |
|`removeArrangedSubview` | stackviewから指定したviewを除去する | `stackView.removeArrangedSubview(view)` |


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS9.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uistackview
