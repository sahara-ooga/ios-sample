# NSManagedObject

## 概要
`NSManagedObject`は、管理オブジェクトを表現するクラス。<br>
RDBで表すのであれば、テーブル内レコードのオブジェクトとなる。

## 関連クラス
NSManagedObjectContext

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|`objectID` | オブジェクト一意のIDを取得する | `object.objectID` |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|`setValue` | オブジェクトに指定したキーで値をセットする | `object.setValue("value", forKey: "key")`|


## フレームワーク
CoreData.framework

## サポートOSバージョン
iOS3.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/coredata/nsmanagedobject
