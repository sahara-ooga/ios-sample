# UISegmentedControl

## 概要
UISegmentedControlはいくつかの選択肢の中から１つだけを選択させるセグメントを管理するクラスです。

![screen_shot](https://github.com/sahara-ooga/ios-uikit-uisegmentedcontrol-demo/wiki/img/segmented_control.png)

## 関連クラス
UIControl

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|selectedSegmentIndex |選択されているセグメントのインデックス | `segment.selectedSegmentIndex` | 

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|setTitle(_:forSegmentAt:) |セグメントの名前を設定する | `seg.setTitle("Turbo", forSegmentAt: 0)` <br>`seg.setTitle("Boost", forSegmentAt: 1)` | 
|titleForSegment(at:) |インデックスを指定してセグメントの名前を取得する | `print(sender.titleForSegment(at: sender.selectedSegmentIndex) ?? "0")` | 

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 参考
https://developer.apple.com/reference/uikit/uisegmentedcontrol

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |
