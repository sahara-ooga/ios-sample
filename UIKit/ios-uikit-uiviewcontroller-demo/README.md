# UIViewController
## 概要
UIViewControllerは、UIKitアプリケーションのViewを管理するためクラスです。

## 関連クラス
UIResponder

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|view | コントローラが管理するView | `self.view` |
|presentingViewController | 遷移元のViewController | `self.presentingViewController` |
|presentedViewController | 遷移先のViewController | `self.presentedViewController` |
| modalPresentationStyle | モーダルでの画面の表示のされ方 | `self.modalPresentationStyle = .overCurrentContext` |
| modalTransitionStyle | モーダルでの現れ方 | `self.modalPresentationStyle = .overCurrentContext` |
| tabBarController | 親であるtabBarControllerがあればそれを返す | `tabBarController?.delegate = self` |



## 主要メソッド

|メソッド名|説明|
|---|---|
|viewDidLoad() | コントローラのViewがメモリにロードされた後に呼ばれる | 
|viewWillAppear(_:) | Viewが表示される直前に呼ばれる |
|viewDidAppear(_:)|Viewが表示されたときに呼ばれる|
|viewWillDisappear(_:)|Viewが表示されなくなる直前に呼ばれる|
|viewDidDisappear(_:)|Viewが表示されなくなったときに呼ばれる|
|didReceiveMemoryWarning()|アプリがMemoryWarningを受け取ったときに呼ばれる|
|present(_:animated:completion:)|ModalにViewControllerを表示する|
|dismiss(animated:completion:)|Modalに表示されたViewControllerを閉じる|

## 各種定数
### UIModalPresentationStyle
モーダルでの現れ方を表す。
horizontal size classがcompactのときは、常にfullScreenで表示される。

|名前|説明|
|---|---|
|fullScreen|全画面表示|
|pageSheet|背景が暗くなる。portraitではfullScreenと同じ。|
|formSheet|画面サイズより小さく表示される。背景は暗くなる。landscapeでキーボードが表示される場合、上にスライドして表示される。|
|currentContext|親VCでdefinesPresentationContextプロパティがtrueのものに従って表示する.|
| custom |transitioningDelegateプロパティが行う独自表示|
|overFullScreen|フルスクリーンで表示するものの、下にあるviewは取り除かれない。そのため自身が不透明でないなら下のViewが透けて表示される|
|overCurrentContext||
|popover|ポップオーバーとして表示される。|
|none||

### UIModalTransitionStyle
トランジションの仕方を指定する。

|名前|説明|
|---|---|
|coverVertical|画面の下からスライドする。消えるときは逆の動き。デフォルト値。|
| flipHorizontal |画面がひっくり返って裏側から現れる。|
|crossDissolve|前の画面がフェードアウトして新しい画面がフェードインする。|
|partialCurl|全画面表示|


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uiviewcontroller
