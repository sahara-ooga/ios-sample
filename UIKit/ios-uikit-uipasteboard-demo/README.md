# UIPasteBoard
## 概要
UIPasteBoardは、文字列や画像などをコピー＆ペーストなどで共有するクラスです。
システム全体で共有されるThe General Pasteboardと、Team IDが共通なアプリで共有されるNamed Pasteboardがあります。

## 関連クラス
NSObject

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------|
| setValue | 文字列または画像をペーストボードにコピーする | pasteboard?.setValue(text, forPasteboardType: PasteBoardKey.text) |
| value | 文字列または画像をペーストボードからペーストする | let text = pasteboard?.value(forPasteboardType: PasteBoardKey.text) as! String |

## 主要プロパティ

### インスタンスプロパティ
| プロパティ名 | 説明 | サンプル | 備考 |
|:-----------:|:------------:|:------------|:------------:|
| items | ペーストボードに保存されるデータの配列 | `for item in pasteboard.items`<br>`{`<br>`for (key, value) in item `<br>`{print("\(key): \(value)")`<br>`}`<br>`}` | - |
| hasStrings | ペーストボードにテキストがあるか<br>チェックする | if pasteboard?.hasStrings == true { <br>    print("Pasteboard has Strings.") <br>} |iOS 10.0以上|
| hasURLs | ペーストボードにURLがあるか<br>チェックする | if pasteboard?.hasURLs == true { <br>    print("Pasteboard has URLs.") <br>} |iOS 10.0以上|
| hasImages | ペーストボードに画像があるか<br>チェックする | if pasteboard?.hasImages == true { <br>    print("Pasteboard has images.") <br>} |iOS 10.0以上|
| hasColors | ペーストボードにカラーデータがあるか<br>チェックする | if pasteboard?.hasColors == true { <br>    print("Pasteboard has colors.") <br>} |iOS 10.0以上|

### スタティックプロパティ
| プロパティ名 | 説明 | サンプル | 備考 |
|:-----------:|:------------:|:------------|:------------:|
| general | どのアプリからも自由にアクセスできる、システムワイドなペーストボード | let pasteboard = UIPasteboard.general |-|

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 使用例


## 参考
https://developer.apple.com/reference/uikit/uipasteboard

[[iOS 10] UIPasteboardに新しく追加されたメソッドについて](http://dev.classmethod.jp/smartphone/ios-10-uipasteboard/)

[UIPasteboardをもっと理解する (前編)](http://noiselessworld.hatenablog.jp/entry/2017/01/24/044145)

[【Tips】iOSのペーストボード（クリップボード）を操作する ※Objective-C](http://blog.koogawa.com/entry/2013/12/07/034459)