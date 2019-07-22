# UIImageView

## 概要
UIImageViewは画像を表示するクラスです。

## 関連クラス
UIView,
UIImage
　
## 実装手順
1. StoryboardにUIViewとそのsubViewとしてUIImageViewを配置します。
2. UIViewControllerとStoryboardのUIView・UIImageViewを関連付けます。
3. png画像をAssets.xcassetsに追加します。
4. StoryboardでUIImageViewに画像をセットします。

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| `image` | `UIImage? { get set }` <br> `UIImageView`の内部に表示される画像| `imageView.image` |
| `isHighlighted` | `Bool { get set }` <br> 画像がハイライト状態かどうか <br> `true`なら、`highlightedImage`・`highlightedAnimationImages`が表示される| `imageView.isHighlighted = !imageView.isHighlighted` |
| `highlightedImage` | `UIImage? { get set }` <br> `UIImageView`の内部で表示される画像<br>| `imageView.highlightedImage = #imageLiteral(resourceName: "stv")` |
| `animationImages` | `[UIImage]? { get set }` <br> `UIImageView`の内部で表示されるアニメーション画像の配列<br>`image`プロパティより優先される| `let animationImages:[UIImage] = [UIImage(named: "img_01")!, UIImage(named: "img_02")!, UIImage(named: "img_03")!]` <br> `loadingImageView.animationImages = animationImages`  <br> `loadingImageView.animationDuration = 1.5` <br> `loadingImageView.animationRepeatCount = 0` <br> `loadingImageView.startAnimating()` <br> `self.addSubview(loadingImageView)` |
| `highlightedAnimationImages` | `[UIImage]? { get set }` <br> `UIImageView`の内部で表示されるアニメーション画像の配列<br>`highlightedImage `プロパティより優先される|`imageView.highlightedAnimationImages`|

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|startAnimating() | アニメーションを開始する | imageView.startAnimating() |
|stopAnimating() | アニメーションを停止する | imageView.stopAnimating() |


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
https://developer.apple.com/reference/uikit/uiimageview
