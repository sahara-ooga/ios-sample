//: Playground - noun: a place where people can play

import UIKit

let dateFormater = DateFormatter()

func setup() {

    //ロケール（日本）
    dateFormater.locale = Locale(identifier: "ja_JP")
    /*:
 このロケールIDについては、
     - [公式ドキュメント](https://developer.apple.com/jp/documentation/BPInternational.pdf)
     - [[iPhoneプログラミング]iPhoneの言語設定関連の情報取得についての解説](http://d.hatena.ne.jp/nakamura001/20090511/1242061301)
     - [[iOS,Objective-C]言語ごとの通貨記号などロケール情報を調べる方法](https://colo-ri.jp/develop/2011/12/ios-objective-c-get-each-locale-information.html)等を参照のこと
    */
    // yyyy: 年 / MM:月 / dd:日 / HH:時 / mm:分 / ss: 秒
    dateFormater.dateFormat = "yyyy/MM/dd HH:mm:ss"
    //dateFormater.dateFormat = "yyyy/MM/dd HH:mm"

}

setup()

/// 文字列　→ 日付へ変換
func testStr2Date() {
    let date = dateFormater.date(from: "2016/10/3 12:12:12")
    print(date ?? "covert failure")    // 2016-10-03 03:12:12 +0000
}

//testStr2Date()

/// 日付　→ 文字列へ変換
func testDate2Str() {
    print(dateFormater.string(from: Date()))    // 2017/04/04 10:44:31
}

//testDate2Str()

/// DateStyleのパターン
func testDate2StrForDateStyle() {

    //dateStyle : fullの場合
    dateFormater.dateStyle = .full
    print(dateFormater.string(from: Date()))    // 2017年4月4日火曜日

    //dateStyle : longの場合
    dateFormater.dateStyle = .long
    print(dateFormater.string(from: Date()))    // 2017年4月4日

    //dateStyle : midiumの場合
    dateFormater.dateStyle = .medium
    print(dateFormater.string(from: Date()))    // 2017/04/04

    //dateStyle : shortの場合
    dateFormater.dateStyle = .short
    print(dateFormater.string(from: Date()))    // 2017/04/04

}

//testDate2StrForDateStyle()

/// TimeStyleのパターン
func testDate2StrForTimeStyle() {

    //timeStyle : fullの場合
    dateFormater.timeStyle = .full
    print(dateFormater.string(from: Date()))    // 2017/04/04 10時44分31秒 日本標準時

    //timeStyle : longの場合
    dateFormater.timeStyle = .long
    print(dateFormater.string(from: Date()))    // 2017/04/04 10:44:31 JST

    //timeStyle : mediumの場合
    dateFormater.timeStyle = .medium
    print(dateFormater.string(from: Date()))    // 2017/04/04 10:44:31

    //timeStyle : shortの場合
    dateFormater.timeStyle = .short
    print(dateFormater.string(from: Date()))    // 2017/04/04 10:44
}

testDate2StrForTimeStyle()