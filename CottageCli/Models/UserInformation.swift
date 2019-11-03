//
//  UserInformation.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 3.11.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

struct UserModel: Codable {
    var cottages: [CottageModel]
}

class UserInformation {
    
    var userInfo: UserModel
    
    init(userInfoFromDisk: Data) throws {
        do {
            let decoder = JSONDecoder()
            self.userInfo = try decoder.decode(UserModel.self, from: userInfoFromDisk)
        } catch {
            throw error
        }

    }
    
    func addCottageForUser(newCottage: CottageModel) {
        userInfo.cottages.append(newCottage)
    }
    
    func convertToJson() throws -> Data {
        
        do {
            let encoder = JSONEncoder()
            let dataAsJson = try encoder.encode(userInfo)
            return dataAsJson
            
        } catch {
            throw "Serialization failed!"
        }
    }
    
    func saveUserData() throws {
        do {
            try FileService.saveUserData(userData: self.convertToJson())
        } catch {
            throw error
        }
    }
    
}
