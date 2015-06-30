//
//  GPS.swift
//  BridgePattern
//
//  Created by KevinLin on 2015/6/29.
//  Copyright (c) 2015年 Garmin. All rights reserved.
//

import UIKit

class GPS: WatchFeature {
    
    override func implementation() -> String {
        let diceRoll = String(Int(arc4random_uniform(7)))
        return "GPS"
    }
   
}
