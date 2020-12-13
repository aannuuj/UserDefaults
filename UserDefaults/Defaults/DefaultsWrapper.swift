//
//  DefaultsWrapper.swift
//  Keyboard
//
//  Created by Hariom Palkar on 14/12/20.
//

import Foundation

@propertyWrapper

struct Storage<T> {
    private let key: String
    private let defaultValue: T

    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
//             Read value from UserDefaults
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
            // Read value from iClouds
            //return NSUbiquitousKeyValueStore.default.object(forKey: key) as? T ?? defaultValue
        }
        set {
            // Set value to UserDefaults
          
            UserDefaults.standard.set(newValue, forKey: key)
            // Set value to iClouds
//            NSUbiquitousKeyValueStore.default.set(newValue, forKey: key)
        }
    }
}
