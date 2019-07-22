# NSManagedObjectContext

## 概要
`NSManagedObjectContext`は、管理オブジェクトコンテキストを表す。<br>
`NSManagedObject`群を管理する。


## 関連クラス
NSManagedObject


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|count | レコード数をカウントする | `context.count(NSFetchRequest)`|
|insert | レコードを登録する | `context.insert(NSManagedObject)` |
|fetch | レコードを取得する | `context.fetch(NSFetchRequest)`|
|save | レコードの変更を確定する | `context.save()`|
|delete | レコードを削除する | `context.delete(NSManagedObject)`|


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
https://developer.apple.com/reference/coredata/nsmanagedobjectcontext
