//
//  AddAssetView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/24/22.
//

import SwiftUI

struct AddAssetView: View {
    
    @Environment (\.managedObjectContext) var managedObjContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var price: Double = 0
    
    var body: some View {
        
//        Text("You can add your asset here")
        Form {
            Section{
                TextField("Asset Name", text : $name)
                    .font(.system(size: 20))
                VStack {
                    Text("Worth:")
                        .padding(1)
                        .font(.system(size: 20))
                    Text("Rp. \(Int(price)),000,-")
                    Slider(value: $price, in: 0...10000, step: 50)
                        .accentColor(Color("darkGold"))
                        .font(.system(size: 18))
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Add Asset") {
                        DataController().addAsset(name: name, price: price, context: managedObjContext)
                        dismiss()
                    }
                }
                .accentColor(Color("darkGold"))
                .font(.system(size: 18))
            }
        }
        .background(Color("darkGold"))
    }
    
}

struct AddAssetView_Previews: PreviewProvider {
    static var previews: some View {
        AddAssetView()
    }
}
