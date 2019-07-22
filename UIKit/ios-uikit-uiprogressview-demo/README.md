# UIProgressView

## 概要
`UIProgressView`はプログレスバーを利用して、タスクの進捗を示すクラスです。

## 関連クラス
UIView

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| `progress` | 進行状況（0.0->1.0）（storyboardで設定可能） | `progressView.progress` |
| `progressViewStyle` | プログレスバーのスタイル（storyboardで設定可能）| `progressView.progressViewStyle` |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|`setProgress（_：animated :)` | 進行状況をセットする。`animated`が`true`だとアニメーション付きでプログレスバーが変化する| `progressView.setProgress(0.25, animated: true)` |

## 定数

|定数名|説明|サンプル|
|---|---|---|
|`UIProgressViewStyle` |プログレスバーのスタイル |// デフォルト <br> `.default` <br> // ツールバーで使用される <br> `.bar`| 

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 参考
https://developer.apple.com/reference/uikit/uiprogressview

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |
