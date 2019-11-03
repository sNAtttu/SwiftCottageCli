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
    static let cottageFileName: String = "cottages.json"
    
    static func writeFileToDisk(jsonToWrite: Data) {
        let fileHandle: FileHandle = FileHandle(forWritingAtPath: "\(cottageDbPath + cottageFileName)")!
        fileHandle.write(jsonToWrite)
    }
    
}
