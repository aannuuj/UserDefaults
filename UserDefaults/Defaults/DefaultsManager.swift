//
//  DefaultsManager.swift
//  Keyboard
//
//  Created by Hariom Palkar on 14/12/20.
//

import Foundation

struct AppData {
    @Storage(key: "username", defaultValue: "John Snow")
    static var username: String
    
    @Storage(key: "initialUser", defaultValue: false)
    static var premiumUser: Bool
}
// to save or edit
//AppData.enableAutoLogin = true
// to use
//print(AppData.enableAutoLogin)
