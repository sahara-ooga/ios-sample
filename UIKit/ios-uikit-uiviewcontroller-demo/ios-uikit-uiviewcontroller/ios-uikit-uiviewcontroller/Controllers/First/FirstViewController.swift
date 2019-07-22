//
//  FirstViewController.swift
//  ios-uikit-uiviewcontroller
//
//  Created by OkuderaYuki on 2017/03/07.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    //MARK:- UIViewController's LifeCycle
    
    /// Viewのロードがされた後で呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #function, #line)
    }
    
    /// Viewが表示される直前に呼ばれる
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #function, #line)
    }
    
    /// Viewが表示されたときに呼ばれる
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #function, #line)
    }
    
    /// Viewが表示されなくなる直前に呼ばれる
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #function, #line)
    }
    
    /// Viewが表示されなくなったときに呼ばれる
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #function, #line)
    }
    
    /// MemoryWarningのときに呼ばれる
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print(#file, #function, #line)
    }
    
    //MARK:- IBActions
    
    @IBAction func tappedSecond(_ sender: Any) {
        let secondVC = SecondViewController()
        
        // SecondViewControllerへ画面遷移
        self.present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func tappedShowModal(_ sender: Any) {
        let modalVC = UIStoryboard.init(name: "Modal", bundle: nil).instantiateInitialViewController()
        guard let vc = modalVC else { return }
        
        // ModalViewControllerへ画面遷移
        self.present(vc, animated: true) {
            
            // Modal表示する遷移先のViewControllerを取得してログに出力する
            print("\(String(describing: self.presentedViewController))")
        }
    }
}

