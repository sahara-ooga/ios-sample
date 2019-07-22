//: Playground - noun: a place where people can play

import UIKit

var date = Date.init()

//dateは変化する
date.addTimeInterval(60 * 60 * 24)

//dateは変化しない
let otherDate = date.addingTimeInterval(60 * 60 * 24 * 2)
let result = date.compare(otherDate)
//print(result.rawValue)

//引数で渡した日付との差分を秒で取得し日に変換
date.timeIntervalSince(otherDate) / (60*60*24)