//
//  StorageManager.swift
//  MyPlacesApp
//
//  Created by Алексей Езерский on 13.01.2023.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
            print("Realm is located at:", realm.configuration.fileURL!)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
            print(place as Any)
            print("Realm is located at:", realm.configuration.fileURL!)
        }
    }
}
