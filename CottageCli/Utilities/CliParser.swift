//
//  CliParser.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 29.10.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

extension String: Error {}

class CliParser {
 
    static func ParseCommand(userGivenArguments: [String]) throws -> BaseService {
        
        let command = userGivenArguments[1]
        let action = userGivenArguments[2]
        
        switch command {
            case "cottage":
                let argAmount = userGivenArguments.count - 1
                let cottageSpecificArgs = Array(userGivenArguments[3...argAmount])
                return CottageService(command, action, cottageSpecificArgs)
            default:
                throw "Unknown command!"
        }
    }
    
}
