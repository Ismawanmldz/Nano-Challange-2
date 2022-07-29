//
//  ContentView2.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/27/22.
//

import SwiftUI
import CoreData

struct ContentView2: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: . reverse)]) var income: FetchedResults<Income>
    
    @State private var showingAddView = false
    
    @Binding var selectedTab: Int
        
    private let values: [Data] = [
        Data(Income: "Full time Ios Developer", moneyIn: 100, type: "Monthly"),
        Data(Income: "Part Time Barista", moneyIn: 100, type: "Daily")
            
    ]
    
    var body: some View {
        VStack{
        
        List{
            ForEach(values){ item in
                DesignView(Income: item.Income, moneyIn: item.moneyIn, type: item.type)
            }
        }
//        NavigationView{
//            VStack(alignment: .leading){
//
//            }
//            .navigationTitle("Income")
//            .toolbar{
//                ToolbarItem(placement: .navigationBarTrailing){
//                    Button{
//                        showingAddView.toggle()
//                    } label: {
//                        Label("Add Income", systemImage: "plus.image")
//                    }
//                }
//            }
            
        }
        .navigationBarTitle(Text("Income"))
    }
}

//struct ContentView2_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView2(, selectedTab: $selectedTab)
//    }
//}

struct Data: Identifiable {
    let id = UUID()
    var Income: String
    var moneyIn: Int
    var type: String
}
