//
//  BaseService.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 29.10.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

class BaseService {
    
    let command: String
    let action: String
    
    init(_ command: String, _ action: String) {
        self.command = command
        self.action = action
    }
    
    func executeAction(userData: UserInformation) {
        print(self.command)
    }
    
}
