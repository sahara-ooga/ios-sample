# UITableView

## 概要
UITableViewはテーブル形式のViewを管理するクラスです。

## 関連クラス
UIScrollView

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| delegate | delegateを設定する | tableView.delegate = self |
| dataSource | dataSourceを指定する | tableView.dataSource = self|
| prefetchDataSource  | prefetchDataSourceを指定する | tableView.prefetchDataSource  = self|
| allowsSelection | セルの選択可否 | tableView.allowsSelection = true|
| indexPathForSelectedRow | 選択されたセルのindexPath | if let indexPathForSelectedRow = tableView.indexPathForSelectedRow {tableView.deselectRowAtIndexPath(indexPathForSelectedRow, animated: true)}|
| isEditing | 編集モードかどうかを決定する | tableView.isEditing = true|


## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| setEditing(_:animated:)| 編集モードかどうかを設定する | tableView.setEditing(editing, animated: animated)|
| deselectRow(at:animated:) | セルの選択状態を解除する | tableView.deselectRow(at: indexPath, animated: true) |
| insertRows(at:with:) | セルをTableViewに挿入する | tableView.insertRows(at: [IndexPath(row:3, section: 3)], with: .right) |
| deleteRows(at:with:) | セルを削除する | tableView.deleteRows(at: [[0, 0], [1, 0]], with: .fade) |
|moveRow(at:to:)| セルを移動する | tableView.moveRow(at: [0, 0], to: [1, 0])|
| reloadData() | tableViewを更新する | tableView.reloadData() |
| reloadSections(_:with:) | 指定したセクションを更新する（アニメーション指定可能） |self.tableView.reloadSections(indexSection, withRowAnimation: .Automatic)|
| reloadRows(at:with:) | 指定した行を更新する（アニメーション指定可能） |tableView.reloadRows(at: indexPaths, with: animation)|
| register(_:forCellReuseIdentifier:) | nibオブジェクトを登録する| self.tableView.register(UINib.init(nibName: String(describing: TableViewCell.self),bundle: nil),forCellReuseIdentifier: String(describing: TableViewCell.self))|
| dequeueReusableCell(withIdentifier:for:) | 再利用可能なセルをテーブルに加える| var cell = self.dequeueReusableCell(withIdentifier: identifier)|

## 主要DataSourceメソッド

| メソッド名 | 説明 | 実装必須 |
|-----------|------------|------------|
| numberOfSections(in:) | セクション数を返す | ◯ |
| tableView(_:numberOfRowsInSection:) | セクションごとのセル数を返す | - |
| tableView(_:titleForHeaderInSection:) | セクションのタイトルを返す | - |
| tableView(_:cellForRowAt:) | セルの内容を返す | ◯ |

## 主要Delegateメソッド

| メソッド名 | 説明 |
|-----------|------------|
| tableView(_:heightForRowAt:) | セルの高さを返す |
| tableView(_:didSelectRowAt:) | セルタップ時に呼ばれる |
| tableView(_:willDisplay:forRowAt:) | セル表示直前に呼ばれる |

## UITableViewDataSourcePrefetchingメソッド

| メソッド名 | 説明 | 実装必須 |
|-----------|------------|------------|
| tableView(_:prefetchRowsAt:) | プリフェッチを始めるよう指示する | ◯ |
| tableView(_:cancelPrefetchingForRowsAt:) | プリフェッチをキャンセルする | |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uitableview
https://developer.apple.com/reference/uikit/uitableviewdatasourceprefetching


# UITableViewCell

## 概要
UITableViewCellはUITableViewに表示するセルを管理するクラスです。

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| isSelected | 選択されているかどうか | cell.isSelected |
| isHighlighted | ハイライト状態かどうか | cell.isHighlighted |
| reuseIdentifier | 識別子 | cell.reuseIdentifier = "cell" |
| isEditing | 編集状態かどうか | |
| editingStyle | 編集スタイル | cell.editingStyle = .insert |


## 主要メソッド

| メソッド名 | 説明 |
|-----------|------------|
| setSelected(_:animated:) | セルの選択状態を設定する（アニメーション指定可能） |
| init(style: UITableViewCellStyle, reuseIdentifier: String?) | プリセットのスタイルでセルを初期化 |
| prepareForReuse() | 再利用前に呼ばれるメソッド |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uitableviewcell

# UIRefreshControl

## 概要
UIRefreshControlはUITableViewのリフレッシュを管理するクラスです。

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| attributedTitle | refreshControlに表示される文言 | refreshControl.attributedTitle |
| isRefreshing | リフレッシュ中かどうか | refreshControl.isRefreshing |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| beginRefreshing() | リフレッシュを開始する | refreshControl.beginRefreshing() |
| endRefreshing() | リフレッシュを終了する | refreshControl.endRefreshing() |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS6.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uirefreshcontrol

[【Swift】Table View Controllerの使い方 その２。テーブルをビヨーンと引っ張って更新する。](http://hajihaji-lemon.com/smartphone/swift/uirefreshcontrol/)

[[iOS 10] 全てのスクロールビューでRefresh Controlがサポートされました](http://dev.classmethod.jp/smartphone/ios-10-support-refresh-control-in-all-scroll-views/)

