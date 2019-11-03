//
//  UserInformation.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 3.11.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

class UserInformation {
    
    let cottages: [Cottage]
    
    init(userInfoFromDisk: [String : Any]) {
        self.cottages = userInfoFromDisk["cottages"] as! [Cottage]
    }
    
}
