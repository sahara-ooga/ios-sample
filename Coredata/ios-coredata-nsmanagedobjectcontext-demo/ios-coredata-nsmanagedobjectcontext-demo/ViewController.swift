//
//  ViewController.swift
//  ios-coredata-nsmanagedobjectcontext-demo
//
//  Created by 本山功 on 2017/02/13.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var context : NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        createRecord()
        updateRecord()
        readRecord()
        countRecord()
    }
    
    func createRecord(){
        let demoEntity = NSEntityDescription.entity(forEntityName: "DemoEntity", in: context)
        let demoRecord = NSManagedObject(entity: demoEntity!, insertInto: context)
        
        demoRecord.setValue("test1", forKey: "demoItem")
        context.insert(demoRecord)
    }
    
    func updateRecord(){
        let request = NSFetchRequest<DemoEntity>(entityName: "DemoEntity")
        request.predicate = NSPredicate(format: "demoItem == %@", "test1")
        let object = try! context.fetch(request)
        
        object[0].setValue("test2", forKey: "demoItem")
        
        try! context.save()
    }
    
    func readRecord(){
        let request = NSFetchRequest<DemoEntity>(entityName: "DemoEntity")
        
        let fetchResults = try! context.fetch(request)
        
        for result: AnyObject in fetchResults {
            let demoItem: String? = result.value(forKey: "demoItem") as? String
            print(demoItem!)
        }
        
    }
    
    func countRecord(){
        let request = NSFetchRequest<DemoEntity>(entityName: "DemoEntity")
        var count : Int = 0
        do{
            count = try context.count(for: request as! NSFetchRequest<NSFetchRequestResult>)
        }catch{
            count = -1
        }
        
        print(count)
    }
    
    func deleteRecord(){
        let request = NSFetchRequest<DemoEntity>(entityName: "DemoEntity")
        request.predicate = NSPredicate(format: "demoItem == %@", "test1")
        let object = try! context.fetch(request)
        context.delete(object[0])
    }
}

