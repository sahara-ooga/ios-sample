//
//  ViewController.swift
//  ios-coredata-nspersistentstorecoordinator-demo
//
//  Created by k_motoyama on 2017/02/18.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class ViewController: UIViewController {
    
    var context : NSManagedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    var persistentStoreCoordinator: NSPersistentStoreCoordinator = NSPersistentStoreCoordinator()
    
    var appDocument = URL(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "ios_coredata_nspersistentstorecoordinator_demo",
                                  withExtension: "momd")
        
        let demoModel = NSManagedObjectModel(contentsOf: url!)!
        persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: demoModel)
        
        context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        context.persistentStoreCoordinator = persistentStoreCoordinator

        let fileManager = FileManager.default
        appDocument = fileManager.urls(for: .documentDirectory,
                                       in: .userDomainMask).first

        addPersistentStore()
        let persistentStore = getNSPersistentStoreForURL()
        removeNSPersistentStore(persistentStore: persistentStore)

    }

    
    // 永続ストアを追加する
    private func addPersistentStore(){
        
        let storeURL = appDocument?.appendingPathComponent("test.sqlite")
        
        do{
          try persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType,
                                                            configurationName: nil,
                                                            at: storeURL,
                                                            options: nil)

        }catch let error as NSError{
            fatalError("\(error)")
        }
        
    }

    // 追加されている永続ストアを全て取得する
    private func getNSPersistentStore() -> NSPersistentStore {
        return persistentStoreCoordinator.persistentStores.first!
    }

    // 追加されている永続ストアをURLから取得する
    private func getNSPersistentStoreForURL() -> NSPersistentStore {
        let storeURL = appDocument?.appendingPathComponent("test.sqlite")
        
        return persistentStoreCoordinator.persistentStore(for: storeURL!)!
    }
    
    // 永続ストアを除去する
    private func removeNSPersistentStore(persistentStore: NSPersistentStore){
        do{
            try persistentStoreCoordinator.remove(persistentStore)
            print(persistentStoreCoordinator.persistentStores.count)
            
        }catch let error as NSError{
            fatalError("\(error)")
        }
        
    }
    
}

