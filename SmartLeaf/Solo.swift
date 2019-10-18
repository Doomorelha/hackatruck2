//
//  Solo.swift
//  SmartLeaf
//
//  Created by Student on 08/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation


class Solo {
    private var umidade: Float
    
    init (umidade: Float) {
        self.umidade = umidade
    }
    
    init(json: [String: AnyObject]) {
        let umidade = json["umidade"] as? String ?? ""
        self.umidade = (umidade as NSString).floatValue
    }
    
    func getUmidade () -> Float {
        return umidade
    }
    
    func setUmidade (umidade: Float) {
        self.umidade = umidade
    }
}
