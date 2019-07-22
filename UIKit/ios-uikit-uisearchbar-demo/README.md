# UISearchBar

## 概要
UISearchBarは、検索したい時などに使用するクラスです。

## 関連クラス
UIView、UIResponder

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|:-----------:|:------------:|:------------|
| delegate | UISearchBarDelegateプロトコル準拠のオブジェクト<BR>delegateを設定する| searchBar.delegate = self |
| showsCancelButton | Bool型<BR>キャンセルボタンを付加する | searchBar.showsCancelButton = true |
| prompt | String型<BR>タイトルを付加する | searchBar.prompt = "タイトル" |
| placeholder | String型<BR>プレースホルダーを付加する | searchBar.placeholder = "入力してください" |
| keyboardType | enum UIKeyboardType : Int<br>キーボードを付加する | searchBar.keyboardType = .default |


## 主要メソッド
### UISearchBarDelegateメソッド

| メソッド名 | 説明 | 必須 |
|:-----------:|:------------:|:------------|
| searchBarSearchButtonClicked(_:) | 検索をクリックしたときに呼ばれる | - |
| searchBar(_:textDidChange:) | サーチバーの中身が更新されるときに呼ばれる | - |
| searchBarCancelButtonClicked(_:)| キャンセルボタンがタップされた時に呼ばれる | - |

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 4 |
| Xcode | 9.2 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uisearchbar

[iOS開発でGitを利用する際のTips](https://blog.ishkawa.org/2012/10/27/xcode-git/)
