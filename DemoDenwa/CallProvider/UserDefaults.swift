//
//  UserDefaults.swift
//  DemoDenwa
//
//  Created by muu van duy on 2018/08/01.
//  Copyright © 2018 javimuu. All rights reserved.
//

import Foundation

public class LocaleStorage {
    static let defaults = UserDefaults(suiteName: "denwa")!
    public class func saveAccessToken(_ token: String) {
        LocaleStorage.defaults.set(true, forKey: token)
        LocaleStorage.defaults.synchronize()
    }
    
    public class func hasAccessToken(_ token: String) -> Bool {
        return LocaleStorage.defaults.bool(forKey: token)
    }
}
