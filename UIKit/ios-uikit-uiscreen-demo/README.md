# UIScreen

## 概要
UIScreenは、内蔵・外部スクリーンのオブジェクトです。
画面サイズ・輝度の他、外部スクリーンの接続に関する通知もあります。

## 関連クラス
UIView

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|`bounds` | スクリーンのサイズ | `let screenSize =  UIScreen.main.bounds`<br>`let height = screenSize.height`<br>`let width = screenSize.width` |
|`main` | デバイスの内蔵スクリーンのオブジェクト | `let internalScreen =  UIScreen.main` |
|`brightness` | スクリーンの輝度 | `let brightnessValue = UIScreen.main.brightness` |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|snapshotView(afterScreenUpdates:) | スナップショットを返す.UIViewが取得できる | `let textrect = `<br>`label.textRect(forBounds: CGRect(x:0.0, y:100.0,` <br>`width:50.0, height:100.0),`<br> `limitedToNumberOfLines: 1)`|
|drawText | ラベルを表示する位置を指定する | `label.drawText(in: CGRect(x:0.0, y:100.0, width:50.0, height:100.0))` |


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
### スクリーンキャプチャを撮る
- [[iOS] UIViewのスナップショットを取得する](http://chicketen.blog.jp/archives/5055277.html)
- [Swift 3 / Why does the snapshot from snapshotView appears blank in iPhone 7 Plus Simulator?](https://stackoverflow.com/questions/40188089/swift-3-why-does-the-snapshot-from-snapshotview-appears-blank-in-iphone-7-plus)

