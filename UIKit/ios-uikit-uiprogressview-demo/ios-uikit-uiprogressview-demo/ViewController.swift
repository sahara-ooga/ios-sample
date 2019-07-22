//
//  ViewController.swift
//  ios-uikit-uiprogressview-demo
//
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var progressView: UIProgressView!
    
    @IBAction private func increaseProgress(_ sender: UIButton) {
        guard progressView.progress < 1.0 else {
            print("すでに100%です")
            return
        }
        // アニメーション付きでプログレスを25%ずつ増やす
        progressView.setProgress(progressView.progress + 0.25, animated: true)
    }
    
    @IBAction private func resetProgress(_ sender: UIButton) {
        // アニメーションなしでプログレスを0に戻す
        progressView.progress = 0.0
    }

}

