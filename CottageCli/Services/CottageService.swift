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
    
    init(_ command: String, _ action: String, _ optionalArgs: [String]) {
        self.optionalArgs = optionalArgs
        super.init(command, action)
    }
    
    override func printCommand() {
        print(self.command)
        print(self.action)
        
        optionalArgs.forEach { arg in
            print(arg)
        }
        
    }
    
}
