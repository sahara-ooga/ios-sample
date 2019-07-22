//: Playground - noun: a place where people can play

import UIKit

/*:
 Data <-> オブジェクト
 */
let array = ["hoeg", "fuga"]

// ArrayをDataに変換
let arrayData = NSKeyedArchiver.archivedData(withRootObject: array)

// DataからArrayに変換（戻り値の型はAny?型）
let unarchivedArray = NSKeyedUnarchiver.unarchiveObject(with: arrayData)

// 変換前後の配列を比較（unarchivedArrayはAny?なのでダウンキャスト必要）
array == unarchivedArray as! [String]

/*:
 Data <-> String
 */
let string = "demo"

// StringをDataに変換（戻り値Data?）
let stringData = string.data(using: .utf8) ?? Data()

// DataをStringに変換（戻り値String?）
let stringFromData = String(data: stringData, encoding: .utf8) ?? "変換失敗"

/*:
 encode / decode
 */
let url = URL(string: "https://www.google.com/images/srpr/logo11w.png")

// URLからData生成
let urlData = try! Data(contentsOf: url!)

// base64 encode
let base64EncodedStr = urlData.base64EncodedData()

// decode
let base64DecodedData = Data(base64Encoded: base64EncodedStr)

/*:
 補足：Base64は、データを64種類の印字可能な英数字のみを用いて、それ以外の文字を扱うことの出来ない通信環境にてマルチバイト文字やバイナリデータを扱うためのエンコード方式である。MIMEによって規定されていて、7ビットのデータしか扱うことの出来ない電子メールにて広く利用されている。具体的には、A–Z, a–z, 0–9 までの62文字と、記号2つ (+, /)、さらにパディング（余った部分を詰める）のための記号として = が用いられる。この変換によって、データ量は4/3（約133%）になる[1]。また、MIMEの基準では76文字ごとに改行コードが入るため、この分の2バイトを計算に入れるとデータ量は約137%となる[2]。(wikipediaより）
 */

/*:
 その他
 */
// 空チェック
urlData.isEmpty

// 長さ取得
urlData.count
