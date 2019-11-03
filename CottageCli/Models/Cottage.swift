//
//  Cottage.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 3.11.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

class Cottage {
    
    let Name: String;
    
    init(name: String) {
        Name = name;
    }
    
    func convertToJson() -> NSString? {
        
        do {
            let classDictionary = ["Name": self.Name]
            let dataAsJson = try JSONSerialization.data(withJSONObject: classDictionary)
            return NSString(data: dataAsJson, encoding: 1)
            
        } catch {
            print(error)
        }
        return "NOK"
    }
}
