//
//  main.swift
//  CottageCli
//
//  Created by Santeri Nousiainen on 29.10.2019.
//  Copyright © 2019 Santeri Nousiainen. All rights reserved.
//

import Foundation

do {
    let service = try CliParser.ParseCommand(userGivenArguments: CommandLine.arguments)
    let userDataFromDisk = try FileService.loadUserData()
    let userInfo = try UserInformation(userInfoFromDisk: userDataFromDisk)
    service.executeAction(userData: userInfo)
}
catch {
    print("Exception happened :D")
}


