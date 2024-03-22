//
//  writeAllViiew.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct writeAllView: View {
    @Binding var showAllWrite: Bool
    @State private var openPhoto = false
    @State private var image = UIImage()
    @State var text: String = ""
    
    var body: some View {
        ZStack{
            
            ScrollView {
                
                Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
                VStack{
                    HStack{
                        Button(action: {
                            self.showAllWrite = false
                        }) {
                            Text("back")
                                .frame(width: 300, alignment: .leading)
                        }
                        
                    }
                    
                    //사진
                    NavigationView {
                        VStack {
                            Image(uiImage: self.image)
                                .resizable()
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .navigationBarTitle("사진", displayMode: .inline)
                        .navigationBarItems(trailing:
                                                Button(action: {
                            self.openPhoto = true
                        }) {
                            Text("사진 추가")
                        }
                        )
                    }
                    .sheet(isPresented: $openPhoto) {
                        ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                    }
                    
                    
                    
                    Text("기록")
                    TextEditor(text: $text)
                        .border(.black)
                        .padding(20)
                        .frame(height: 200)
                    
                    }
            }
        }
    }
}
