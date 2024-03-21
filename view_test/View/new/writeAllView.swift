//
//  writeAllViiew.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct writeAllView: View {
    @Binding var showAllWrite: Bool
    
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
            
            HStack{
                Button(action: {
                    self.showAllWrite = false
                }) {
                    Text("back")
                        .frame(width: 300, alignment: .leading)
                }
                
            }
            
            Text("사진")
            Text("기록")
            
        }
    }
}
