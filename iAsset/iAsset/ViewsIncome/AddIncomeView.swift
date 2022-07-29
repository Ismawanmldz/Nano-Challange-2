////
////  AddIncomeView.swift
////  iAsset
////
////  Created by Ismawan Maulidza on 7/28/22.
////
//
//import SwiftUI
//
//struct AddIncomeView: View {
//
//    @Environment (\.managedObjectContext) var managedObjContext
//    @Environment (\.dismiss) var dismiss
//
//    @State private var nameIn = ""
//    @State private var moneyIn : Double = 0
//
//    var body: some View {
//        Form {
//            Section {
//                TextField ("Income from", text: $nameIn)
//
//                VStack {
//                    Text("Money; \(Int(moneyIn))")
//                    Slider(value: $moneyIn, in: 0...1000, step:10)
//                }
//                .padding()
//
//                HStack {
//                    Spacer()
//                    Button("Add Income"){
//                        DataController2().addIncome(nameIn: nameIn, moneyIn: moneyIn, context: managedObjContext)
//                        dismiss()
//                    }
//                    Spacer()
//                }
//            }
//        }
//    }
//}
//
//struct AddIncomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddIncomeView()
//    }
//}
