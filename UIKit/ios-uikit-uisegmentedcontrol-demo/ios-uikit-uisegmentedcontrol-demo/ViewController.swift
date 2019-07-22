//
//  ViewController.swift
//  ios-uikit-uisegmentedcontrol-demo
//
//  Created by Kentaro on 2017/02/21.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBAction private func didTapSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = UIColor.white
        case 1:
            view.backgroundColor = UIColor.blue
        case 2:
            view.backgroundColor = UIColor.yellow
        default:
            fatalError("ありえないIndexです")
        }
        
        //選択したセグメントのタイトルを取得する
        print("The title for selected segment is \"" + sender.titleForSegment(at: sender.selectedSegmentIndex)! + "\"")
    }

}

