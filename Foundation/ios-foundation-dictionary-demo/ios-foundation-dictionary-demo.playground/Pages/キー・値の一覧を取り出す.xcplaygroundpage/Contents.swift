//: [Previous](@previous)

import Foundation

// 辞書リテラル
var dictionary = ["key1": 1,
              "key2": 2,
              "key3": 3,
              "key4": 4,
              "key5": 5]

/*
 key・valueの一覧を取り出す
 */
// keyの一覧取得
print(Array(dictionary.keys))

// valueの一覧取得
print(Array(dictionary.values))


// for in 文
for (key, value) in dictionary {
    print("key = \(key), value = \(value)")
}

//同等
dictionary.forEach({print("key = \($0.key), value = \($0.value)")})

//: [Next](@next)
