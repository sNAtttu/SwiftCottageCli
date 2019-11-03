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
    
    func convertToJson() throws -> Data {
        
        do {
            let classDictionary = ["Name": self.Name]
            let dataAsJson = try JSONSerialization.data(withJSONObject: classDictionary)
            return dataAsJson
            
        } catch {
            throw "Serialization failed!"
        }
    }
}
