//
//  ViewController.swift
//  ios-coredata-nsmanagedobject-demo
//
//  Created by 本山功 on 2017/02/13.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        createRecord()
        getObjectId()

    }
    
    //　オブジェクトに指定したキーで値をセットする
    func createRecord(){
        let demoEntity = NSEntityDescription.entity(forEntityName: "DemoEntity",
                                                    in: context)
        let demoRecord = NSManagedObject(entity: demoEntity!,
                                         insertInto: context)
        
        demoRecord.setValue("test1",
                            forKey: "demoItem")
        
        context.insert(demoRecord)
    }

    // オブジェクト一意のIDを取得する（save前後で変更される可能性あり）
    func getObjectId(){
        let demoEntity = NSEntityDescription.entity(forEntityName: "DemoEntity",
                                                    in: context)
        let demoRecord = NSManagedObject(entity: demoEntity!, insertInto: context)
        
        print(demoRecord.objectID)
    }

}

