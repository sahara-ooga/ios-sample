//
//  ViewController.swift
//  ios-coredata-nsrelationshipdescription-demo
//
//  Created by 本山功 on 2017/02/14.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var context : NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    var demoEntity = NSEntityDescription()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        demoEntity = NSEntityDescription.entity(forEntityName: "DemoEntity", in: context)!
        getMinCount()
        getMaxCount()
        getIsToMany()

    }

    // 参照するオブジェクトの最小値
    func getMinCount(){
        print(demoEntity.relationshipsByName["demoEntityContents"]!.minCount as Any)
        
    }
    
    // 参照するオブジェクトの最大値
    func getMaxCount(){
        print(demoEntity.relationshipsByName["demoEntityContents"]!.maxCount as Any)
    }
    
    // 一対多であるかどうかを取得する
    func getIsToMany(){
        print(demoEntity.relationshipsByName["demoEntityContents"]!.isToMany as Any)
    }
}

