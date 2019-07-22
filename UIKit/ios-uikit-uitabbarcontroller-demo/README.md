# UITabBarController

## 概要
UITabBarControllerは並列的にUIViewControllerを管理するクラスです。
![screenshot](https://github.com/sahara-ooga/ios-uikit-uitabbarcontroller-demo/blob/image/uitabbarcontroller.png?raw=true)

## 関連クラス
UIViewController

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| selectedIndex | 選択中のIndex | `tabBarController?.selectedIndex` |
| selectedViewController | 選択中のViewController | `tabBarController?.selectedViewController?` |
| viewControllers | 管理しているviewControllerの配列 | `tabBarController?.viewControllers?`|

## 主要Delegateメソッド（UITabBarControllerDelegate）

| メソッド名 | 説明 |
|-----------|------------|
| tabBarController(_:shouldSelect:) | 指定されたViewControllerをアクティブにする必要があるかどうかをdelegateに問い合わせる |
| tabBarController(_:didSelect:) | タブが選択されたら呼ばれる |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uitabbarcontroller
