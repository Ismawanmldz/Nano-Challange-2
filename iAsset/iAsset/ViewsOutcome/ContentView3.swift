//
//  ContentView3.swift
//  iAsset
//
//  Created by Ismawan Maulidza on 7/27/22.
//

import SwiftUI

struct ContentView3: View {
    
    @Binding var selectedTab: Int
//    @State var showImagePicker: Bool = false
//    @StateObject var imageData = ImageData()
    
    var body: some View {
        Text("Hello World")
//        NavigationView {
//            VStack {
//                if imageData.imageNote.isEmpty {
//                    Text("Try adding")
//                        .italic()
//                        .foregroundColor(.gray)
//                } else{
//                    HomeView()
//                }
//            }
//            .navigationTitle("Outcome")
//            .sheet(isPresented: $showImagePicker) {
//                ImagePicker(sourceType: .photoLibrary) {
//                    image in
//                    imageData.addNote(image: image, title: "Edit", desc: "")
//                }
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button{
//                        showImagePicker.toggle()
//                    } label: {
//                        Label("Image", systemImage: "photo.on.rectangle.angled")
//                    }
//                }
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button{
//                        withAnimation{
//                            imageData.resetUserData()
//                        }
//                    } label: {
//                        Label("Trash", systemImage: "trash")
//                    }
//                    .tint(.red)
//                }
//
//            }
//        }
//        .environmentObject(imageData)
//    }
    }
}

//struct ContentView3_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView3(selectedTab: <#Binding<Int>#>)
//    }
//}
