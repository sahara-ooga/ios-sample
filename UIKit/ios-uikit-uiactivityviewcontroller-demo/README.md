# UIActivityViewControllerのデモ

## 概要
UIActivityViewControllerは、アプリケーションからさまざまなサービスを提供するために使用します。<br>
SNS連携やiCloud連携、メールの送信やクリップボードのコピーなどができます。

## 関連クラス
UIViewController

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|excludedActivityTypes | 使用しないアクティビティタイプを指定する | UIActivityViewController.excludedActivityTypes |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|init | 初期化処理<br> activityItems に格納したオブジェクトによってシートの表示が変わる | UIActivityViewController(activityItems: items, applicationActivities: nil) |


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS6.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/UIActivityViewController
