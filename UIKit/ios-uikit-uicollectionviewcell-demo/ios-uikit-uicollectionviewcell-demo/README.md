# UICollectionView

## 概要
UICollectionViewCellは、UICollectionViewを使用するときに利用します。


## 関連クラス
UICollectionView、UICollectionReusableView、UICollectionViewController、UIScrollView
 
## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|isSelected | 選択されているかどうかを取得する | self.contentView.backgroundColor = isSelected ? UIColor.blue : UIColor.yellow |
|isHighlighted | ハイライト表示されているかどうかを取得する | collectionView.dataSource = self |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS6.0以上、tvOS6.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uicollectionview
https://developer.apple.com/reference/uikit/uicollectionviewcell
https://developer.apple.com/reference/uikit/uicollectionreusableView
