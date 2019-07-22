//: [Previous](@previous)

import Foundation

/*:
 #### 空文字チェックをする
 三項演算子で一個目は"foo"、二個目は"空です"と表示
 */
func sampleIsEmpty() {
    print("sampleIsEmpty()")
    let string = "foo"
    print(string.isEmpty ? "空です" : string)
    
    let emptyString = ""
    print(emptyString.isEmpty ? "空です" : emptyString)
}

sampleIsEmpty()

/*:
 #### 文字数を取得する
 charactorViewプロパティを使用
 */
private func sampleCount() {
    print("")
    print("sampleCount()")
    
    let string = "1234567890"
    print(string.characters.count)
}

sampleCount()


/*:
 #### 文字列の一部を取得する
 インデックスの指定の仕方に注目。
 */
private func sampleSubstring() {
    print("")
    print("sampleSubstring()")
    
    let string = "1234567890"
    
    // 先頭から5文字
    print("先頭から5文字:",string.substring(to: string.index(string.startIndex, offsetBy: 5)))
    
    // 末尾から3文字
    print("末尾から3文字:",string.substring(from: string.index(string.endIndex, offsetBy: -3)))
    
    // 先頭から3文字〜末尾から3文字の範囲
    print("先頭から3文字〜末尾から3文字の範囲:",string.substring(with: string.index(string.startIndex, offsetBy: 3) ..< string.index(string.endIndex, offsetBy: -3)))
}

sampleSubstring()

/*:
 #### 文字列を数値に変換する
 mapメソッドで、場合分け
 */
private func sampleInt() {
    print("")
    print("sampleInt()")
    
    let testData = ["1","2","♥","4","あ"]
    
    testData.forEach {
        print(Int($0) ?? "数値以外")
    }
    
}

sampleInt()

/*:
 #### 文字列を区切り文字で分割する
 */
private func sampleComponents() {
    print("")
    print("sampleComponents()")
    
    let string = "a,b,c,d,e,f,g"
    let separatedArray = string.components(separatedBy: ",")
    
    separatedArray.forEach {
        print($0)
    }
    
    let str = "2016/01/31"
    let split = str.components(separatedBy: "/")
    print(split)
}
sampleComponents()

/*:
 #### 文字列を置換する
 ハートを空文字に置換している
 */
private func sampleReplacingOccurrences() {
    print("")
    print("sampleReplacingOccurrences()")
    
    let string = "S♥T♥V"
    print(string.replacingOccurrences(of: "♥", with: ""))
}
sampleReplacingOccurrences()

/*:
 #### 文字列のPrefixを調べる
 filterメソッドで、"stv"が接頭辞にないものを弾いてforEach内でコンソールに出力
 */
private func sampleHasPrefix() {
    print("")
    print("sampleHasPrefix()")
    
    let testData = ["stv001","Stv002","stv003","ssd004","s"]
    
    //関数型言語風
    testData.filter{
        $0.hasPrefix("stv")
    }.forEach {
        print($0)
    }
}
sampleHasPrefix()

/*:
 #### 文字列のSuffixを調べる

 .mapならば返り値として返すことができる
 .forEachなら返り値なし
 */
private func sampleHasSuffix() {
    print("")
    print("sampleHasSuffix()")
    let testData = ["stv001","Stv002","stv003","ssd004","s001"]
    
    //"001"が末尾にくる要素だけ残して、コンソールに出力
    testData.filter {
        $0.hasSuffix("001")
        }.forEach {
            print($0)
        }
}
sampleHasSuffix()

/*:
 #### 文字列に該当の文字列が含まれるか調べる
 さらに先頭から何文字目かも調べる
 */
private func sampleRange() {
    print("")
    print("sampleRange()")
    
    let string = "あああああああああstvいいいいいいいいいいいいい"
    
    if let index = string.range(of: "stv") {
        print("見つかりました。 index: \(string.distance(from: string.startIndex, to: index.lowerBound))")
    } else {
        print("見つかりませんでした")
    }
}
sampleRange()

/*:
 参考：別の実現の仕方
 
 [Swift3.0で文字列操作](http://moapp.hateblo.jp/entry/2016/06/01/215603)
 
 対象の文字列をCharacterの配列として扱い、enumeratedで文字とインデックスを取るようにしておきます。
 
 そして指定の1文字でfilterをかけて、最初にヒットしたインデックスの値を元にString.Indexの値として取得します。
 
 この例では取得したString.Indexの値が取れてることを確認するためにsubscriptでアクセスできるかどうかを確認しています。
 */

extension String {
    
    func index(character: Character) -> String.Index? {
        let index = self.characters.enumerated()
            .filter { (idx, c) in c == character }
            .first?.0
        
        guard let offset = index else {
            return nil
        }
        
        return self.index(self.startIndex, offsetBy: offset)
    }
}

let string = "123456"
if let index = string.index(character: "3") {
    string[index] // -> "3"
}

/*:
 #### 対象の文字列から指定の文字列の範囲を検索する
 */
extension String {
    
    func range(string: String) -> Range<String.Index>? {
        guard let startIndex = self.index(character: string[string.startIndex]) else {
            return nil
        }
        
        guard let endIndex = self.index(startIndex,
                                        offsetBy: string.characters.count,
                                        limitedBy: self.endIndex)
            else {
            return nil
        }
        
        //stringの最初の一文字から、stringの文字列分だけselfから切り出してくる
        //stringとselfから切り出した分が一致するかチェックする
        let range = startIndex..<endIndex
        if self[range] != string {
            return nil
        }
        
        return range
    }
}

let exString = "ex123456ample"
if let range = exString.range(string: "1234") {
    exString[range] // -> "34"
}

/*:
 #### 文字列の前後の空白を削除する
 */
private func sampleTrimmingCharacters() {
    print("")
    print("sampleTrimmingCharacters()")
    
    let string = " STV　"
    print(string.trimmingCharacters(in: .whitespaces).uppercased())
}
sampleTrimmingCharacters()

/*:
 #### 第一引数の文字列から、第二引数の文字列に含まれる文字を取り除く
 .uppercased(),.lowercased(),どちらも指定しない場合の結果に注意
 */
/// 文字列から、任意の文字を取り除く
///
/// - Parameters:
///   - string: 余計な文字を取り除きたい文字列
///   - string2: 取り除きたい文字の集まりからなるString.文字の順番は無視される
/// - Returns: トリムされた文字列
private func sampleTrimmingCharacters2(from string:String,
                                       by string2:String)-> String {
    print("")
    print("sampleTrimmingCharacters2()")
    
    return string
        .trimmingCharacters(in: CharacterSet(charactersIn:string2))
        //.uppercased()
        //.lowercased()
}

print(sampleTrimmingCharacters2(from: "あああああああああsTvいいいいいいいいいいいいい",
                                by: "いあ"))
/*:
 #### 文字列の前後の改行を削除する
 */
/// 文字列の前後の改行を削除する
private func sampleTrimmingCharactersWhitespacesAndNewlines() {
    print("")
    print("sampleTrimmingCharactersWhitespacesAndNewlines()")
    
    let string = "\nSTV\n"
    print(string.trimmingCharacters(in: .whitespacesAndNewlines).uppercased())
}
sampleTrimmingCharactersWhitespacesAndNewlines()

/*:
 #### 文字列をURLエンコードする
 */
private func sampleAddingPercentEncoding() {
    print("")
    print("sampleAddingPercentEncoding()")
    
    let string = "スマートテック・ベンチャーズ"
    print(string.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? "エンコードできませんでした")
}
sampleAddingPercentEncoding()

/*:
 #### 文字列をURLデコードする
 */
private func sampleRemovingPercentDecoding() {
    print("")
    print("sampleAddingPercentDecoding()")
    let string = "%E3%82%B9%E3%83%9E%E3%83%BC%E3%83%88%E3%83%86%E3%83%83%E3%82%AF%E3%83%BB%E3%83%99%E3%83%B3%E3%83%81%E3%83%A3%E3%83%BC%E3%82%BA"
    print(string.removingPercentEncoding ?? "デコードできませんでした")
}
sampleRemovingPercentDecoding()

func encodeDecode(string:String)->String?{
    return string.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)?.removingPercentEncoding ?? nil
}

print(encodeDecode(string: "string"))

/*:
 #### 文字列を大文字に変換する
 */
private func sampleUppercased() {
    print("")
    print("sampleUppercased()")
    
    let string = "stv"
    print(string.uppercased())
}
sampleUppercased()

/*:
 #### 文字列を小文字に変換する
 */
private func sampleLowercased() {
    print("")
    print("sampleLowercased()")
    
    let string = "STV"
    print(string.lowercased())
}
sampleLowercased()

/*:
 #### 対象の文字列の配列から1つの文字列に集約する
 */
private func sampleJoin() {
    print("")
    print("sampleJoin()")
    
    let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    let list = cast.joined(separator: ", ")
    print(list)
    // Prints "Vivien, Marlon, Kim, Karl"
    
    let numberStr = ["1", "2", "3", "4", "5", "6"].joined(separator: "") // -> "123456"
    print(numberStr)
}
sampleJoin()

/*:
 #### 指定する1文字ごとに対象の文字列を分割する
 */
extension String {
    func separatedComponents(separator: Character) -> [String] {
        return self.characters
            .split(separator: separator)
            .map(String.init)
    }
}

let separatedComponentsArray = "1,2,3,4,5,6".separatedComponents(separator: ",")
// -> ["1", "2", "3", "4", "5", "6"]

/*:
 #### 指定する1文字を対象の文字列から取り除く
 対象の文字列を`Character`の配列として扱い、
 指定する1文字で`filter`をかけて
 もう一度文字列として集約をかけます。
 */
extension String {
    
    func removed(character: Character) -> String {
        return self.characters
            .filter { $0 != character }
            .map { String($0) }
            .joined(separator: "")
    }
}

"1,2,3,4,5,6".removed(character: ",") // -> "123456"

/*:
 #### 指定する文字列を対象の文字列から取り除く
 `replaceSubrange(range: Range<String.Index>, with: String)`
 を内部で再帰的に呼び出して文字列を取り除きます。
 */
extension String {
    
    func removed(string: String) -> String {
        if let range = self.range(string: string) {
            var mutatingSelf = self
            mutatingSelf.replaceSubrange(range, with: "")
            return mutatingSelf.removed(string: string)
        }
        return self
    }
}

"1, 2, 3, 4, 5, 6".removed(string: ", ") // -> "123456"
"2016-4-13 14:55:45".removed(string: "-").removed(string: ":")
//: [Next](@next)
