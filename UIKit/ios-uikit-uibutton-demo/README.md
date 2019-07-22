# UIButton

## 概要
UIButtonは、ボタンを表示するために利用します。


## 関連クラス
UIControl, NSCoding

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|currentTitle | ボタンに現在表示されているタイトルを取得する | `button.currentTitle` |



## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
| setTitle | ボタンのタイトルを設定する | `button.setTitle("ボタン", for: UIControlState.normal)` |
| setTitleColor | ボタンのタイトルの色を設定する | `button.setTitleColor(UIColor.red, for: UIControlState.normal)` |
| setTitleShadowColor | ボタンのタイトルの影を設定する | `button.setTitleShadowColor(UIColor.gray, for: UIControlState.normal)`|
| setImage | ボタンに表示する画像を設定する | `button.setImage(UIImage, for: UIControlState.normal)` |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uibutton
