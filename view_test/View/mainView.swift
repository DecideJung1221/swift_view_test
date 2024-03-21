//
//  mainView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct mainView: View {
    
    @State var showDetail = false
    
    
    var body: some View {
        
        ZStack {
            
            
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
            
            
                
                if showDetail {
                    tabView(showDetail: self.$showDetail)
                } else {
                    VStack{
                        Image("MOA")
                            .offset(y:-100)
                        Button(action: {
                            self.showDetail = true
                        }) {
                            Text("start")
                        }
                        .offset(y:80)
                        Image("moa_human")
                            .offset(y:100)
                    }
                }
                 
                
                
                
                
                
                
            
            
        }
    }
}

#Preview {
    mainView()
}
