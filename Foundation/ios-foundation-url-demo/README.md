# URL

## 概要
`URL`は、リモートサーバ上のリソースやローカルファイルにアクセスするためのクラスです。

## 関連クラス
NSObject、NSURL

## イニシャライザ

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| `init(string:)` | `String`からURLを生成する | `URL(string:"www.example.com/image.png")` |
| `init(fileURLWithPath` | URLにパスの拡張子を追加する | `url.appendingPathExtension("png")` |
| `deletingLastPathComponent` | URLの最後のパスコンポーネントを削除する | `url.deletingLastPathComponent` |
| `deletingPathExtension`| URLのパスの拡張子を削除する | `url.deletingPathExtension` |

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| `path` | URLのパスコンポーネントを取得する | `url.path` |
| `lastPathComponent` | URLの最後のパスコンポーネントを取得する <br> URLが空文字の場合は空文字を返す | `url.lastPathComponent` |
| `pathExtension` | URLのパスの拡張子を取得する <br> pathが空文字の場合は空文字を返す | `url.pathExtension` |
| `scheme` | スキームを取得する | `url.scheme` |
| `isFileURL` | ファイル、ディレクトリであるかどうか判定する <br> (schemeが`"file"`であるかどうか) | `url.isFileURL` |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| `appendingPathComponent` | URLにパスコンポーネントを追加する | `url.appendingPathComponent("image.png")` |
| `appendingPathExtension` | URLにパスの拡張子を追加する | `url.appendingPathExtension("png")` |
| `deletingLastPathComponent` | URLの最後のパスコンポーネントを削除する | `url.deletingLastPathComponent` |
| `deletingPathExtension`| URLのパスの拡張子を削除する | `url.deletingPathExtension` |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/foundation/url
