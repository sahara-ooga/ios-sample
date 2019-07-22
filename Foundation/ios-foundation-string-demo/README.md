# String

## 概要
Stringは文字列をを利用するためのクラスです。

## 関連クラス
NSString、NSMutableString

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|---|---|---|
|isEmpty  |空文字チェックをする  | `string.isEmpty` |
|characters.count  |文字数を取得する  | `string.characters.count` |
|characters.last  |最後の文字を取得する  | `string.characters.last` |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|---|---|---|
|substring  |文字列の一部を取得する  |`string.substring(to: str.index(string.startIndex, offsetBy: 5)))`  |
|components  |文字列を区切り文字で分割する  |`string.components(separatedBy: ",")`  |
|replacingOccurrences  |文字列を置換する  |`string.replacingOccurrences(of: "♥", with: "")`  |
|hasPrefix   |文字列のPrefixを調べる  |`string.hasPrefix("stv")` |
|range  |文字列に該当の文字列が含まれるか調べる  |`string.range(of: "stv")`  |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|---|---|
|Swift |3.0.2 |
|Xcode |8.2.1 |
|iOS |10.0~ |

## 参考
https://developer.apple.com/reference/swift/string


### Unicode関連

- [NSString and Unicode](https://www.objc.io/issues/9-strings/unicode/)
- [なぜSwiftの文字列APIは難しいのか | プログラミング | POSTD](http://postd.cc/why-is-swifts-string-api-so-hard/)
- [Unicodeとは？ その歴史と進化、開発者向け基礎知識](http://www.buildinsider.net/language/csharpunicode/01)