# UIColor
## 概要
UIColorは、色を管理するクラスです。

## 関連クラス
NSObject
　
## 実装手順
1. UIViewControllerでUIColorオブジェクトを生成します。
4. UIViewControllerでUIColorオブジェクトを編集します。
5. UIViewControllerのviewのbackgroundColorにUIColorオブジェクトをセットして色を表示させます。

## カラーリテラル

|オブジェクトリテラル|説明|サンプル|
|---|---|---|
|`#colorLiteral` | カラーパレットで`UIColor`オブジェクトの色を設定する | `color = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)` |

## イニシャライザ

|イニシャライザ|説明|サンプル|
|---|---|---|
|`init(colorLiteralRed: green: blue: alpha:)`| rgbαの値を指定して`UIColor`オブジェクトを生成する| `UIColor(colorLiteralRed: 1.0, green: 0.9, blue: 0, alpha: 1.0)` |
|`init(patternImage:)` | パターンを使用して`UIColor`オブジェクトを生成する <br> 領域内にタイル状に繰り返し表示される | `color = UIColor(patternImage: image)` |
|`init(ciColor:)` | `CIColor`から`UIColor`オブジェクトを生成する | `color = UIColor(ciColor: self.ciColor)` |
|`init(cgColor:)` | `CGColor`から`UIColor`オブジェクトを生成する | `color = UIColor(cgColor: self.cgColor)` |

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|`clear` | 透明のカラーオブジェクト | `UIColor.clear` |
|`black` | 黒のカラーオブジェクト| `UIColor.black` |
|`red` | 赤のカラーオブジェクト | `UIColor.red` |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|`withAlphaComponent(_:)` | 透過度を設定する| `self.color = color.withAlphaComponent(0.5)` |
|`setFill()`| 塗りつぶし操作の色を、レシーバが表す色に設定する| `fillColor.setFill()` |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uicolor
