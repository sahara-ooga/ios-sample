# UIScrollView

## 概要
UIScrollViewはWindowのサイズより大きなコンテンツを表示するViewを管理するクラスです。

"スクロールビューの中にスクロールビューよりも大きいビューを入れて、スクロールビュー上にある大きいビューを見るためにスクロールビューが移動する。"

"本来、サイズが異なるビュー同士の上下左右の距離の制約を0に設定することはできず、普通のUIViewなどで同じ制約を追加するとエラーが発生する。しかし、スクロールビューはそれが可能で、この設定によってスクロールビューとイメージビューの端の距離が0になるまで自由に移動できるようになる。" 

[【Swift】Scroll Viewの使い方。大きい部品をスクロールして見る。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview/)

## 関連クラス
UIView

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| scrollsToTop | scroll-to-topをさせるかどうか | scrollView.scrollsToTop |
| showsHorizontalScrollIndicator | 水平方向のScrollIndicatorを表示するかどうか | scrollView.showsHorizontalScrollIndicator |
| showsVerticalScrollIndicator | 垂直方向のScrollIndicatorを表示するかどうか | scrollView.showsVerticalScrollIndicator |
| isPagingEnabled | ページングするかどうか | scrollView.isPagingEnabled |
| delegate:UIScrollViewDelegate? | scrollViewのイベント発生時に処理を委譲する | scrollView.delegate = self
 |


## UIScrollViewDelegate:主要Delegateメソッド

| メソッド名 | 説明 |
|-----------|------------|
| scrollViewDidEndDecelerating(_:) | スクロール停止時に呼び出される |
| scrollViewDidScroll(_:) | スクロールした時に呼ばれる（何度も呼ばれるので重い処理しないように注意） |
| scrollViewDidEndDragging(_:willDecelerate:) | スクロールビューのドラッグが終わった呼ばれる |

## ページング可能なScrollViewをAuto Layoutで実装する方法
下記リンク先参照  
http://qiita.com/kazuhiro4949/items/afb8738f70100f5665c0

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
- https://developer.apple.com/reference/uikit/uiscrollview
- [【Swift】Scroll Viewの使い方。大きい部品をスクロールして見る。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview/)
- [【Swift】Scroll ViewとPage Controlを使ってページを移動する方法。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview_pagecontrol/)
- [【Swift】Scroll Viewの設定項目。画像のズームやスクロール時の挙動を細かく設定する。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview_setting/)

ScrollViewの設置、AutoLayout・PageControlの設定についてはこれが分かりやすかった。

- [【Swift】Scroll Viewの設定項目。画像のズームやスクロール時の挙動を細かく設定する。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview_setting/)
- [【Swift】Scroll Viewを使って入力欄とキーボードが被らないようにする方法。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview_uitextfield/)

より実用的な設定はこちらを参照。

-----
# UIPageControl

## 概要
UIPageControlはドキュメントまたは他のデータのモデルエンティティのページを管理するクラスです。

![UIPageControlの例](https://raw.githubusercontent.com/sahara-ooga/ios-uikit-uiscrollview-demo/image/スクリーンショット%202017-06-02%2016.26.26.png)


## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| currentPage | 現在のページ | pageControl.currentPage |
| hidesForSinglePage | ページが1つしか無いときにpageControlを非表示にするかどうか | pageControl.hidesForSinglePage |

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
https://developer.apple.com/reference/uikit/uipagecontrol

[【Swift】Page Controlの使い方。現在のページを把握するための丸印の並び](http://hajihaji-lemon.com/smartphone/swift/page-control/)

[【Swift】Scroll ViewとPage Controlを使ってページを移動する方法。](http://hajihaji-lemon.com/smartphone/swift/uiscrollview_pagecontrol/)