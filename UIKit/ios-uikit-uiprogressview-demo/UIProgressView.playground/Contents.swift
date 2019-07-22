//: A UIKit based Playground to present user interface
  
import UIKit
import PlaygroundSupport

var containerView = UIView(frame: CGRect(x: 0, y: 0,
                                         width: 300,
                                         height: 300))

containerView.backgroundColor = UIColor.gray

PlaygroundPage.current.needsIndefiniteExecution = true

//Live Viewに上記のViewを表示させる
PlaygroundPage.current.liveView = containerView

var progressView = UIProgressView(progressViewStyle: .default)
progressView.frame = CGRect(x: 30, y: 150,
                            width: 240, height: 30)

containerView.addSubview(progressView)

func increaseProgress() {
    guard progressView.progress < 1.0 else {
        resetProgress()
        return
    }
    
    // アニメーション付きでプログレスを増やす
    progressView.setProgress(progressView.progress + 0.10, animated: true)
}

func resetProgress() {
    // プログレスを0に戻す
    progressView.setProgress(0.0, animated: true)
}

//1秒ごとにプログレスバーが1/10ずつ増えていく
class ProgressOperation:Operation{
    
    override func main() {
        Thread.sleep(forTimeInterval: 1)
        increaseProgress()
    }
}

var operations = [ProgressOperation]()
for _ in 0..<21 {
    operations.append(ProgressOperation())
}

let queue = OperationQueue.main
queue.addOperations(operations, waitUntilFinished: false)
