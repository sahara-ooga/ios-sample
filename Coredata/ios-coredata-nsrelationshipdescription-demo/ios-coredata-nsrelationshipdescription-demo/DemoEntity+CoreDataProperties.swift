//
//  DemoEntity+CoreDataProperties.swift
//  ios-coredata-nsrelationshipdescription-demo
//
//  Created by 本山功 on 2017/02/14.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import Foundation
import CoreData


extension DemoEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DemoEntity> {
        return NSFetchRequest<DemoEntity>(entityName: "DemoEntity");
    }

    @NSManaged public var demoItemName: String?
    @NSManaged public var demoItemId: Int16
    @NSManaged public var demoEntityContents: DemoEntityContents?

}
