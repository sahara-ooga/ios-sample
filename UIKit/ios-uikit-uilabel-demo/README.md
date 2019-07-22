# UILabel

## 概要
UILabelは、テキストを表示するために利用します。


## 関連クラス
UIView, NSCoding, UIContentSizeCategoryAdjusting

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|text | 表示するテキストを設定する | `label.text = "label"` |
|font | テキストのフォントを設定する | `label.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)` |
|textColor | テキストの色を設定する | `label.textColor = UIColor.blue` |
|shadowColor | テキストの影の色を設定する | `label.shadowColor = UIColor.gray` |
|shadowOffset | テキストの影の位置を設定する | `label.shadowOffset = CGSize(width:6,height:6)`|
|textAlignment | テキストの水平方向の配置を設定する  | `label.textAlignment = NSTextAlignment.center` |
|lineBreakMode | テキストの折り返しや切り捨てる方法を設定する  | `label.lineBreakMode = NSLineBreakMode.byTruncatingHead` |
|attributedText | 表示するテキストとスタイルを設定する  | `let attributeText = NSMutableAttributedString("")`<br>`attributeText.addAttributes([NSForegroundColorAttributeName: UIColor.blue],`<br> `range: NSMakeRange(0, 2))`<br>`label.attributedText = attributeText`|
|highlightedTextColor | テキストのハイライトカラーを設定する  | `label.highlightedTextColor = UIColor.red`|
|isHighlighted | ハイライトカラーで表示するかを設定する  | `label.isHighlighted = true`|
|isUserInteractionEnabled | ユーザイベントの有効化/無効化を設定する  | `label.isUserInteractionEnabled = true`|
|isEnabled | ラベルの表示の有効/無効を設定する | `label.isEnabled = true`|
|numberOfLines | ラベルに表示する行数を指定する  | `label.numberOfLines = 0`|
|adjustsFontSizeToFitWidth | テキストの表示をラベルに合わせるかどうかを設定する | `label.adjustsFontSizeToFitWidth = false`|
|baselineAdjustment | テキストを表示するベースラインを設定する | `label.baselineAdjustment = UIBaselineAdjustment.alignCenters`|
|minimumScaleFactor | テキストの最小フォントサイズ | `label.baselineAdjustment = UIBaselineAdjustment.alignCenters`|
|baselineAdjustment | テキストを切り捨てる前に文字の間隔を自動的に詰める | `label.allowsDefaultTighteningForTruncation = true`|
|preferredMaxLayoutWidth | ラベルに複数行表示されている場合の最大幅を設定する | `label.preferredMaxLayoutWidth = label.bounds.width` |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|textRect | ラベルに設定されたCGRectを返す | `let textrect = `<br>`label.textRect(forBounds: CGRect(x:0.0, y:100.0,` <br>`width:50.0, height:100.0),`<br> `limitedToNumberOfLines: 1)`|
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
https://developer.apple.com/reference/uikit/uilabel
