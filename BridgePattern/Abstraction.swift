//
//  Abstraction.swift
//  BridgePattern
//
//  Created by KevinLin on 2015/6/29.
//  Copyright (c) 2015年 Garmin. All rights reserved.
//

import UIKit

class GarminWatch: NSObject {
    
    var imp: Implementor
    
    init(imp: Implementor) {
        self.imp = imp
    }
    
    func operation() -> String {
        return imp.implementation()
    }
}
