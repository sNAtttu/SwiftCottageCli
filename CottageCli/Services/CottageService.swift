//
//  CottageService.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 29.10.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

class CottageService: BaseService {
    
    let optionalArgs: [String]
    let cottageAction: String
    
    init(_ command: String, _ action: String, _ optionalArgs: [String]) {
        self.optionalArgs = optionalArgs
        self.cottageAction = action
        super.init(command, action)
    }
    
    override func executeAction() {
        
        switch self.cottageAction {
        case "add":
            let newCottage = Cottage(name: self.optionalArgs[0])
            print(newCottage.convertToJson() ?? "Cottage JSON Failed")
        default:
            print("Unknown action")
        }
        
    }
}
