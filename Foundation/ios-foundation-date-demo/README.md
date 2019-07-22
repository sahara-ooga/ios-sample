# Date

## 概要
Dateは、テキストを表示するために利用します。


## 関連クラス
ReferenceConvertible, Comparable, Equatable

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|init | 現在日付を取得する | Date.init()|
|addTimeInterval | 日付に時間(秒)を追加する | date.addTimeInterval(60 * 60 * 24)|
|addingTimeInterval | 日付に時間を追加し、追加した時間を返す | date.addingTimeInterval(60 * 60 * 24 * 2) |
|compare | 引数で渡した日付が過去か未来かを列挙型で取得する | date.compare(otherDate) |
|timeIntervalSince | 引数で渡した日付との差分を秒で取得する | date.timeIntervalSince(otherDate) |

## フレームワーク
Foundation.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/foundation/date
