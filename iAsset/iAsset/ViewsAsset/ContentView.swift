//
//  ContentView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/24/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @Binding var selectedTab: Int
    
    @Environment(\.managedObjectContext) var managedObjcontext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var asset: FetchedResults<Asset>
    
    @State private var showingAddView = false
    
    var body: some View {
        
        NavigationView {
            ZStack{
//                .backgroundColor("black")
                
            VStack(alignment: . leading){
                Text("Total Asset Rp. \(Int(totalAsset())),000.-")
                    .foregroundColor(.black)
                    .padding(.horizontal)
                    .font(.system(size: 20))
                List {
                    ForEach(asset) { asset in
                        NavigationLink(destination: EditAssetView(asset: asset)){
                            HStack {
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(asset.name!)
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 18))
                                    Text("Rp. \(Int(asset.price))").foregroundColor(.white) + Text(",000.-").foregroundColor(.white)
                                        .font(.system(size: 18))
                                        
                                }
                                Spacer()
                                Text(calcTimeSince(date: asset.date!))
                                    .foregroundColor(.white)
                                    .italic()
                                    .background(.black)
                                    .font(.system(size: 17))
                            }
                        }

                        .listRowBackground(Color.black)
                    }
                    .onDelete(perform: deleteAsset)
                }
                .listStyle(.insetGrouped)
                .background(.gray)
            }
        
            .navigationTitle("iAsset")
            .background(Color("lightGold"))
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showingAddView.toggle()
                    } label: {
                        Label("Add Asset", systemImage:"plus")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                }
                
            }
            .sheet(isPresented: $showingAddView){
                AddAssetView()
            }
        }
        .navigationViewStyle(.stack)
        }
}
    
    
    
    private func deleteAsset(offsets: IndexSet){
        withAnimation{
            offsets.map { asset[$0]}.forEach(managedObjcontext.delete)
            
            DataController().save(context: managedObjcontext)
        }
    }
    
    //
//    private func editAsset(offsets: IndextSet){
//        withAnimation{
//            offsets.map { asset[$0]}.forEach(managedObjcontext.edit)
//
//            DataController().save(context: managedObjcontext)
//        }
//    }
    //
    
//    private func totalAssetToday() -> Double{
//        var assetToday: Double = 0
//        for item in asset{
//            if Calendar.current.isDateInToday(item.date!) {
//                (assetToday += item.price)
//
//            }
//        }
//        return assetToday
//
//}
    private func totalAsset() -> Double{
        var assetAllTotal: Double = 0
        for item in asset{
            assetAllTotal += item.price
        }
        return assetAllTotal
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
