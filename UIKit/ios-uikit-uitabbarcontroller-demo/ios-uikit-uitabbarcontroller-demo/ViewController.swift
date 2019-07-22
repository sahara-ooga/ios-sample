//
//  ViewController.swift
//  ios-uikit-uitabbarcontroller-demo
//
//  Created by Kentaro on 2017/03/01.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIViewControllerのプロパティとして、tabBarControllerがあることに注意
        tabBarController?.delegate = self
    }
    
    fileprivate func printSelectedIndexAndVewController() {
        print("選択中のIndex = \(tabBarController!.selectedIndex)")
        print("選択中のViewController = \(tabBarController!.selectedViewController!)")
        print("管理しているviewControllerの配列 = \(tabBarController!.viewControllers!)")
    }
}

// MARK: - UITabBarControllerDelegate

extension ViewController: UITabBarControllerDelegate {

    /*
     指定されたviewControllerをアクティブにするかdelegateに問い合わせる
     trueを返すとviewContorllerが切り替わる（タブが切り替わる）
     falseを返すとviewContorllerの切り替えを行わない（タブが切り替わらない）
     */
    func tabBarController(_ tabBarController: UITabBarController,
                          shouldSelect viewController: UIViewController) -> Bool {
        print("shouldSelect viewController = \(viewController)")
        printSelectedIndexAndVewController()
        return true
    }
    
    // タブが選択されたら呼ばれる
    func tabBarController(_ tabBarController: UITabBarController,
                          didSelect viewController: UIViewController) {
        print("didSelect viewController = \(viewController)")
        printSelectedIndexAndVewController()
    }
}
