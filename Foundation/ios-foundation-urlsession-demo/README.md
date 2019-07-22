# URLRequest

## 概要
URLRequestは通信のリクエストをカプセル化したクラスです。

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| `httpMethod` | HTTPメソッドを取得・設定する | `urlRequest.httpMethod = "GET"` |
| `httpBody`  | HTTPボディ | `urlRequest.httpBody` |
| `allHTTPHeaderFields`  | HeaderFieldの配列 | `urlRequest.allHTTPHeaderFields` |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| `addValue(_:forHTTPHeaderField:)` | `HTTPHeaderField`の設定をする | `urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")` |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/foundation/urlrequest

-------------------------------------

# URLSession

## 概要
`URLSession`は通信タスクを管理するクラスです。

## 関連クラス
NSObject

## イニシャライザ
| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| `init(configuration:)` | `URLSessionConfiguration`から生成する | `URLSession(configuration: config)` |

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| `configuration` | セッションの設定オブジェクトのコピー | `session.configuration` |

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| `dataTask(with:completionHandler:)` | `URLRequest`から`URLSessionDataTask`を生成する <br> コールバックの中でHTTPレスポンスのメタデータにアクセス可能 | `session.dataTask(with: urlRequest) { data, urlResponse, error in {}` |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/foundation/urlsession

--------------------------------


# URLSessionConfiguration

## 概要
`URLSessionConfiguration`は`URLSession`の設定を管理するクラスです。

## 関連クラス
NSObject

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| `default` | デフォルトセッション構成 | `URLSessionConfiguration.default` |
| `ephemeral` | キャッシュ、Cookie、または資格情報に永続ストレージを使用しないセッション構成 | `URLSessionConfiguration.ephemeral` |
| `timeoutIntervalForRequest` | リクエストのタイムアウト設定（デフォルト値：60秒） | `config.timeoutIntervalForRequest` |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/foundation/urlsessionconfiguration


---------------------------------------

# URLSessionDataTask

## 概要
スーパークラスの`URLSessionTask`は個々のHTTPリクエストの通信タスクを管理します。

`URLSessionDataTask`はサーバからデータを取得し、結果を`Data`としてメモリ上に保持します。  
比較的短い時間ですぐ応答することが期待されるタスクを管理するクラスです。

## 関連クラス
URLSessionTask

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|-----------|------------|------------|
| `resume()` | 通信を開始する | `task.resume()` |
| `cancel()` | 通信をキャンセルする | `task.cancel()` |

## フレームワーク
Foundation.framework

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/foundation/urlsessiontask
