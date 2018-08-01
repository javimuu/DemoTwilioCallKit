//
//  CallDelegate.swift
//  DemoDenwa
//
//  Created by muu van duy on 2018/08/01.
//  Copyright © 2018 javimuu. All rights reserved.
//

import Foundation
import TwilioVoice
import PushKit
import AVFoundation

class CallDelegate: NSObject {
    internal var call:TVOCall?
    internal var callInvite:TVOCallInvite?
    internal var deviceTokenString:String?
    
    public func saveAccessToken(_ token: String) {
        LocaleStorage.saveAccessToken(token)
    }
    
    public func fetchAccessToken() -> String? {
        let endpointWithIdentity = String(format: "%@?identity=%@", PhoneConstants.accessTokenEndpoint, "yourname")
        guard let accessTokenURL = URL(string: PhoneConstants.baseURLString + endpointWithIdentity) else {
            return nil
        }
        let token = try? String.init(contentsOf: accessTokenURL, encoding: .utf8)
        if token != nil {
            saveAccessToken(token!)
        }
        
        return token
    }
}
