//
//  DesignView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/29/22.
//

import SwiftUI

struct DesignView: View {
    
    @State var Income: String
    @State var moneyIn: Int
    @State var type: String
    
    var body: some View {
        ZStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.black)
                        .frame(height: 100)
                    VStack(alignment: .leading){
                        Text("Full time Ios Developer")
                            .font(.system(size: 20))
                            .foregroundColor(.yellow)
                            .font(.title)
                        Text("Rp. 100.000.000,-")
                            .font(.system(size: 17))
                            .foregroundColor(.yellow)
                            .font(.title2)
                        Text("Monthly")
                            .font(.system(size: 17))
                            .foregroundColor(.yellow)
                            .font(.title2)
                    }
                    .padding()
                }
                .padding()
    }
//    Text("Income")
}

struct DesignView_Previews: PreviewProvider {
    static var previews: some View {
        DesignView(Income: "Full time Ios Developer", moneyIn: 100, type: "Monthly")
    }
}
