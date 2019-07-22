//
//  ViewController.swift
//  ios-coredata-nsmanagedobjectmodel-demo
//
//  Created by 本山功 on 2017/02/17.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context : NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    var demoModel: NSManagedObjectModel = NSManagedObjectModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        let url = Bundle.main.url(forResource: "ios_coredata_nsmanagedobjectmodel_demo",
                                  withExtension: "momd")
        
        demoModel = NSManagedObjectModel.init(contentsOf: url!)!
        getConfigurationName()
        
    }
    
    func setNewEntity(){
        
        let newModel = NSManagedObjectModel()

        let testEntity = NSEntityDescription()
        testEntity.name = "testEntity"
        
        let testAttribute = NSAttributeDescription()
        testAttribute.name = "testItem"
        testAttribute.attributeType = .stringAttributeType
        testAttribute.isOptional = false
        
        testEntity.properties = [testAttribute]
        newModel.entities = [testEntity]
        
        print(newModel.entitiesByName.keys.first!)
    }
    
    func getConfigurationName(){
        print(demoModel.configurations)
    }
    
}

