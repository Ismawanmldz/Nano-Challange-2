//
//  HomeView.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/28/22.
//
import Foundation
import SwiftUI

//struct HomeView: View {
//    
//    @EnvironmentObject var imageData: ImageData
//    
//    var body: some View {
//        List{
//            ForEach(imageData.imageNote) { note in
//                NavigationLink(destination: Text("\(note.title)")){
//                    HStack {
//                        Image(uiImage: UIImage(data: note.image)!)
//                            .resizable()
//                            .frame(width: 50, height: 50, alignment: .center)
//                    
//                        VStack(alignment: .leading){
//                            Text(note.title)
//                                .lineLimit(2)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//            .environmentObject(ImageData())
//    }
//}
