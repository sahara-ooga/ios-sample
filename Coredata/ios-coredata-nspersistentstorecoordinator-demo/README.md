# NSPersistentStoreCoordinator

## 概要
`NSPersistentStoreCoordinator`は複数の永続ストアを管理します。


## 関連クラス
NSObject, NSLocking

## 主要プロパティ
|プロパティ名|説明|サンプル|
|---|---|---|
|`ersistentStores` | 管理されている永続ストアを全て取得する | `persistentStoreCoordinator.persistentStores`|


## 主要メソッド
|メソッド名|説明|サンプル|
|---|---|---|
|`addPersistentStore(ofType:configurationName:at:options:)` | 永続ストアを追加する | `persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: URL, options: nil)` |
|`persistentStore(for:)` | 管理されている永続ストアをURLから取得する | `persistentStoreCoordinator.persistentStore(for: storeURL!)` |
|`remove(_:)` | 永続ストアを除去する | `persistentStoreCoordinator.remove(persistentStore)` |


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
https://developer.apple.com/reference/coredata/nspersistentstorecoordinator
