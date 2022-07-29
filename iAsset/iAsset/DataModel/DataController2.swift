//
//  DataController2.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/28/22.
//

import Foundation
import CoreData

class DataController2: ObservableObject{
    let container = NSPersistentContainer(name: "AssetModel")
    
    init(){
        container.loadPersistentStores {desc, error in
            if let error = error {
                print("Failed \(error.localizedDescription)")
            }
        }
    }
        func save(context:NSManagedObjectContext) {
            do{
                try context.save()
                print("Data saved")
            } catch{
                print("Data not save")
            }
        }
    func addIncome(nameIn: String, moneyIn: Double, context: NSManagedObjectContext ){
        let income = Income(context: context)
        income.id = UUID()
        income.date = Date()
        income.nameIn = nameIn
        income.moneyIn = moneyIn
        
        save(context: context)
        
    }
    
    func editIncome(income: Income, nameIn:String, moneyIn: Double, context: NSManagedObjectContext) {
        income.date = Date()
        income.nameIn = nameIn
        income.moneyIn = moneyIn
        
        save(context: context)
    }
}
