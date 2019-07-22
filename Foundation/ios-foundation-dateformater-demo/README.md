# DateFormatter

## 概要
`DateFormatter`は、日付を適切な書式で表示したいときに利用します。

## 関連クラス
Formater

## 主要プロパティ

|プロパティ|説明|サンプル|
|---|---|---|
| `locale` | ロケールを設定する | `dateFormatter.locale = Locale(identifier: "ja_JP")`| 
| `dateStyle`  |  日付のスタイルを設定する |  `dateFormatter.dateStyle = .full` |
| `timeStyle`  |  時間のスタイルを設定する |  `dateFormatter.timeStyle = .medium` |
| `dateFormat`  |  日付の書式を設定する |  `dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"` |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
| `date`  |  文字列を日付型に変換する |  `dateFormatter.date(from: "2016/10/3 12:12:12")`|
| `string`  |  日付型を文字列に変換する |  `dateFormatter.string(from: Date())` |

## フレームワーク
Foundation.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.3 |
| iOS | 10.2〜 |

## 参考
https://developer.apple.com/reference/foundation/dateformatter
