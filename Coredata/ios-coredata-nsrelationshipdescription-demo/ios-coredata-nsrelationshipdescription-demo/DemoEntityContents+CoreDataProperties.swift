//
//  DemoEntityContents+CoreDataProperties.swift
//  ios-coredata-nsrelationshipdescription-demo
//
//  Created by 本山功 on 2017/02/14.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import Foundation
import CoreData


extension DemoEntityContents {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DemoEntityContents> {
        return NSFetchRequest<DemoEntityContents>(entityName: "DemoEntityContents");
    }

    @NSManaged public var demoContentsId: Int16
    @NSManaged public var demoItemId: Int16
    @NSManaged public var demoContentsName: NSObject?
    @NSManaged public var demoEntity: DemoEntity?

}
