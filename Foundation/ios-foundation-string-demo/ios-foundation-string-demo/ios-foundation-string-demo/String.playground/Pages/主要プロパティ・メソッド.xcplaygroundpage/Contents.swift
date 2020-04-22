//: Playground - noun: a place where people can play

import UIKit

let string = "今日は、祭りが終わるのを待っていたかのように雨が降り出した。"
//MARK:主要プロパティ
string.isEmpty //false
string.count
string.last  //"。"

//MARK:主要メソッド
//文字列の一部を取得する
//TODO:indexの使い方の説明
string.substring(to: string.index(string.startIndex, offsetBy: 5))

//文字列を区切り文字で分割する
string.components(separatedBy: "、")     //["今日は","祭りが終わるのを待っていたかのように雨が降り出した。"]

//文字列を置換する
string.replacingOccurrences(of: "祭り", with: "我々の移動")    //今日は、我々の移動が終わるのを待っていたかのように雨が降り出した。

//文字列のPrefixを調べる
string.hasPrefix("今日は、")    //true

//文字列に該当の文字列が含まれるか調べる
string.range(of: "祭り")  //TODO:rangeの実用例

//: [Next](@next)
