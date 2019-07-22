//: URLRequest,URLSession,URLSessionConfiguration,URLSessionDataTask

import UIKit
import PlaygroundSupport

// Playgroundで非同期処理を許可する
PlaygroundPage.current.needsIndefiniteExecution = true

/*:
 URLRequest
 */
let url = URL(string: "http://httpbin.org/get")!
// URLからURLRequestを生成
var urlRequest = URLRequest(url: url)
// HTTPメソッド設定
urlRequest.httpMethod = "GET"
// HTTPHeaderField設定
urlRequest.addValue("application/json",
                    forHTTPHeaderField: "Accept")

/*:
 URLSessionConfiguration
 */
var config = URLSessionConfiguration.default
// タイムアウト設定（デフォルト値：60秒）
config.timeoutIntervalForRequest = 90.0

/*:
 URLSession
 */
// URLSessionConfigurationからURLSessionを生成
let session = URLSession(configuration: config)

/*:
 URLSessionDataTask
 */
// URLSessionが、URLRequestからURLSessionDataTaskを生成
let task = session.dataTask(with: urlRequest) { data, urlResponse, error in
    guard
        error == nil,
        let urlResponse = urlResponse as? HTTPURLResponse,
        let data = data else {
            print(error!)
            return
    }
    // レスポンスのURLResponse
    print(urlResponse.description)
    
    // レスポンスのData
    print(NSString(data:data,
                   encoding:String.Encoding.utf8.rawValue)!)
}

// 通信を開始する
task.resume()
