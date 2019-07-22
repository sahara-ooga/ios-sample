//: [Previous](@previous)

import Foundation

// 辞書リテラル
var dictionary = ["key1": 1,
                  "key2": 2,
                  "key3": 3,
                  "key4": 4,
                  "key5": 5]

/*
 主要メソッド
 */
// 削除
dictionary.removeValue(forKey: "key2")
print(dictionary)

// 更新
dictionary.updateValue(2, forKey: "key2")
print(dictionary)

// 辞書の登録数を表す整数値を返す
print(dictionary.count)

// 空チェック
if dictionary.isEmpty {
    print("空です")
} else {
    print("dictionary = \(dictionary)")
}

//: [Next](@next)
