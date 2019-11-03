//
//  FileService.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 3.11.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

class FileService {
    
    static let cottageDbPath: String = "/Users/snou/cottageDb/"
    static let userInformationFileName: String = "user.json"
    
    static func loadUserData() throws -> Data {
        do {
            let fileHandle: FileHandle = FileHandle(forReadingAtPath: "\(cottageDbPath + userInformationFileName)")!
            let existingData = fileHandle.readDataToEndOfFile()
            try fileHandle.close()
            return existingData
        }
        catch {
            throw error
        }
    }

}
