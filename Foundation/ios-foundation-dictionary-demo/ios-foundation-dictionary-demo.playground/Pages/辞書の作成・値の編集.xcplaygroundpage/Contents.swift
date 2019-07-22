//: Playground - noun: a place where people can play

import UIKit

/*
 空の辞書作成
 */
// 型推論利用（STVコーディング規約準拠）
var dictionary = [String: Int]()

// その他の空辞書作成方法（各PJのコーディングに合わせる）
let dic: [String: String] = [:]
let dic2 = Dictionary<String, String>()
let dic3: Dictionary<String, String> = [:]

/*
 値の編集
 */
// 追加
dictionary["key1"] = 100

// 値へのアクセス
let value = dictionary["key1"]

// 取り出される値の型はOptional<Value>型
print(value!)

// 存在しないkeyにアクセス →nil
print(dictionary["key"] as Any)

// 更新
dictionary["key1"] = 1

// 辞書リテラル
dictionary = ["key1": 1,
              "key2": 2,
              "key3": 3,
              "key4": 4,
              "key5": 5]

// 削除
//次の文と同等：dictionary["key1"] = nil
dictionary.removeValue(forKey: "key1")

print(dictionary)

dictionary["key1"] = 1

