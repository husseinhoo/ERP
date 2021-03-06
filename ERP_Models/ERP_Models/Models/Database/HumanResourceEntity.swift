//
//  HumanResourceEntity.swift
//  ERP_Models
//
//  Created by Hossein Azizi on 7/3/16.
//  Copyright © 2016 Hossein Azizi. All rights reserved.
//

import Foundation
import CoreData


class HumanResourceEntity: QuantitativeResourceEntity {
    
    override func setupEntity(object: NSObject) {
        let humanResource = object as! HumanResource
        self.myCategory = (ResourceCatalog.getInstance().getResourceEntitiesCategoryByName(resourceCategoriesEntityClassName: HumanResourceCategoriesEntity.className(), categoryName: humanResource.getCategory() as String) as! HumanResourceCategoriesEntity)
        self.totalAmount = humanResource.totalAmount
        self.estimatedTimeUse = humanResource.estimatedTimeUse
        self.name = humanResource.name as String
        self.allocatedAmount = humanResource.allocatedAmount
        self.dateAdded = humanResource.dateAdded as String
    }
    
    override class func getMyType () -> String
    {
        return "HumanResource"
    }
}
