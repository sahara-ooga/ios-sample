//
//  DemoEntity+CoreDataProperties.swift
//  ios-coredata-nsmanagedobjectcontext-demo
//
//  Created by 本山功 on 2017/02/13.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import Foundation
import CoreData


extension DemoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DemoEntity> {
        return NSFetchRequest<DemoEntity>(entityName: "DemoEntity");
    }

    @NSManaged public var demoItem: String?

}
