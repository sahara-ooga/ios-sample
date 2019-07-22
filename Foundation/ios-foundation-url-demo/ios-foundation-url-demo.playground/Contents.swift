//: URL

import UIKit

/*:
 initializer
 */

// StringからURLを生成
var url = URL.init(string: "http://68.media.tumblr.com/9ac6be74ae9269810ad269a13fae7512/tumblr_inline_o000lfvfwO1rbh5uh_540.png")

let documentsDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
let localPDFPath = documentsDirectory.appending("/sample.pdf")

// path (String型) -> fileURL (URL型)
// ローカルファイルのpathからfileURLを生成
let documentsDirURL = URL.init(fileURLWithPath: documentsDirectory)
let localPDFURL = URL.init(fileURLWithPath: localPDFPath)

/*:
 properties
 */

// fileURL (URL型) -> path (String型)
// fileURLからpathを生成
let pdfPath = localPDFURL.path
let documentsDirPath = documentsDirURL.path

// lastPathComponentを取得する (String型)
var lastPathComponent = url?.lastPathComponent
lastPathComponent = localPDFURL.lastPathComponent
lastPathComponent = documentsDirURL.lastPathComponent

// 拡張子を取得する
var pathExtension = url?.pathExtension
pathExtension = localPDFURL.pathExtension
pathExtension = documentsDirURL.pathExtension

// スキームを取得する
var scheme = url?.scheme
scheme = localPDFURL.scheme
scheme = documentsDirURL.scheme

// file、Directoryであるかどうか判定 (scheme == file であるかどうか)
var isFileURL = url?.isFileURL
isFileURL = localPDFURL.isFileURL
isFileURL = documentsDirURL.isFileURL

/*:
 methods
 */

// URLの編集
// path componentを追加
var localImageURL = documentsDirURL.appendingPathComponent("image")
// 拡張子を追加
localImageURL = localImageURL.appendingPathExtension("png")

// 拡張子を削除
localImageURL = localImageURL.deletingPathExtension()

// path componentを削除
localImageURL = localImageURL.deletingLastPathComponent()

// URL同士の比較
documentsDirURL != localPDFURL
documentsDirURL == localImageURL
