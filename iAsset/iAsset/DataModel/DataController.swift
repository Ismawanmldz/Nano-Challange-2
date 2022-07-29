//
//  DataController.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/24/22.
//

import Foundation
import CoreData //untuk akses core data

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "AssetModel")

    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("failed \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext ) {
        do{
            try context.save()
            print("data saved!")
        } catch {
            print("we could not save")
        }
    }
    
    func addAsset(name: String, price: Double, context: NSManagedObjectContext) {
        let asset = Asset(context: context)
        asset.id = UUID()
        asset.date = Date()
        asset.name = name
        asset.price = price
        
        save(context: context)
    }
    
    func editAsset(asset: Asset, name: String, price: Double, context:NSManagedObjectContext){
        asset.date = Date()
        asset.name = name
        asset.name = name
        asset.price = price
        
        save(context: context)
    }
}


