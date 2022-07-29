//
//  EditAssetView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/24/22.
//

import SwiftUI

struct EditAssetView: View {
    
    @Environment (\.managedObjectContext) var managedObjContext
    @Environment (\.dismiss) var dismiss
    
    var asset: FetchedResults<Asset>.Element
    
    @State private var name = ""
    @State private var price: Double = 0
    
    var body: some View {
        Form{
            Section {
                TextField("\(asset.name!)", text: $name)
                    .onAppear{
                        name = asset.name!
                        price = asset.price
                    }
                VStack {
                    Text("Worth:")
                        .padding(1)
                        .font(.system(size: 20))
                    Text("Rp. \(Int(price)),000,-")
                    Slider(value: $price, in: 0...10000, step: 50)
                        .font(.system(size: 18))
                }
                .padding()
                
                HStack{
                    Spacer()
                    Button("Edit Asset"){
                        DataController().editAsset(asset: asset, name: name, price: price, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                        .font(.system(size: 2))
                }
            }
        }
        .background(Color("darkGold"))
    }
}

//struct EditAssetView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditAssetView()
//    }
//}
