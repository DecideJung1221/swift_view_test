//
//  writeView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//
import SwiftUI

struct writeView: View {
    @Binding var showWrite: Bool
    
    var contents = ["장방시1", "장방시2", "장방시3","장방시4","장방시5","네 꿈을 펼쳐봐"]
    @State var selectedColor = ""
    
    
    var body: some View {
        
        
        
        ZStack {
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
            VStack {

                HStack{
                    Button(action: {
                        self.showWrite = false
                    }) {
                        Text("back")
                            .frame(width: 300, alignment: .leading)
                    }
                    
                }
                    
                    Spacer()
                    
                    Text("오늘의 대화 등장!!!!")
                
                  
                    VStack {
                      Picker("Choose a color", selection: $selectedColor) {
                        ForEach(contents, id: \.self) {
                          Text($0)
                        }
                      }
                      .pickerStyle(.wheel)
                      .background(Color(#colorLiteral(red: 1, green: 0.8173014521598816, blue: 0.8173014521598816, alpha: 1)))
                      .cornerRadius(15)
                      .padding()
                      
                      Text("You selected: \(selectedColor)")
                    }
                  
                
                    Spacer()
                    
                    
                    
                }
            
        }
    }
    }

