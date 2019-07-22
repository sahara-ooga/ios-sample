# Dictionary

## 概要
Dictionaryは辞書を利用するためのクラスです。

### 例
HTTPレスポンスコードとメッセージ
```
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]
```

## 関連クラス
NSDictionary、NSMutableDictionary

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| count | 要素数を取得する | `dictionary.count` |
| isEmpty  | 辞書に要素があるかどうか判定する | `dictionary.isEmpty` |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| removeValue | 指定したキーと対応する値を辞書から削除する | `dictionary.removeValue(forKey: "key")` |
| updateValue | 配列したキーに対応する値を、新しく指定した値で置き換える | `dictionary.updateValue("value", forKey: "key")` |
| updateValue | 配列したキーに対応する値を、新しく指定した値で置き換える | `[200: "OK",403: "Access forbidden"].forEach({print("\($0.key):\($0.value)")})`<br>`// 200:OK 403:Access forbidden`|

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/swift/dictionary
