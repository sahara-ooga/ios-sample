# NSManagedObjectModel

## 概要
`NSManagedObjectModel`は、管理オブジェクトモデルを表現するクラス。<br>
DBを定義するスキーマのオブジェクトとなる。

## 関連クラス
NSManagedObject

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
| `entities` | 管理オブジェクト内に存在するEntityの配列を保持する | `managedObjectModel.entities.append[entityDescription]` |
| `entitiesByName` | 管理オブジェクト内に存在するEntityをEntity名をKeyとして保持する | `managedObjectModel.entitiesByName["name"]` |
| `configurations` | 管理オブジェクト内に存在するconfiguration名を保持する | `managedObjectModel.configurations` |

## イニシャライザ

|メソッド名|説明|サンプル|
|---|---|---|
|`init()` | 初期化メソッド | `var model = NSManagedObjectModel()` |
|`init?(contentsOf: URL)` | リソース内のファイルを参照してmodelを生成する初期化メソッド | `var model = NSManagedObjectModel(contentsOf: URL)`|


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
https://developer.apple.com/reference/coredata/nsmanagedobjectmodel
