//
//  Fenix3.swift
//  BridgePattern
//
//  Created by KevinLin on 2015/6/29.
//  Copyright (c) 2015年 Garmin. All rights reserved.
//

import UIKit

class Fenix3: GarminWatch {
    
    override func operation() -> String {
        let string = imp.implementation()
        return string + "3"
    }
    
}
