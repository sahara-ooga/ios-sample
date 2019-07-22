//
//  ViewController.swift
//  ios-uikit-uiscrollview-demo
//
//  Created by Kentaro on 2017/03/06.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet fileprivate weak var scrollView: UIScrollView!
    @IBOutlet fileprivate weak var pageControl: UIPageControl!
    
    // pageControllタップ時のアクション
    @IBAction private func didTapPageControl(_ sender: UIPageControl) {
        // scrollViewの位置も変える
        scrollView.contentOffset = CGPoint(x: scrollView.frame.size.width * CGFloat(sender.currentPage), y: 0)
    }
}

// MARK: - UIScrollViewDelegate

extension ViewController: UIScrollViewDelegate {
    
    // スクロール停止時に呼び出される
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // pageControllのページを更新する
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
    }
}
