//
//  TabView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct tabView: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        
        ZStack{
            
            TabView {
                ContentView()
                    .tabItem {
                        Label("기록하기", systemImage: "tray.and.arrow.down.fill")
                    }
                testView()
                    .tabItem {
                        Label("추억하기", systemImage: "clock.arrow.2.circlepath")
                    }
                
            }
        }
        
        
    }
    
}

//#Preview {
//    tabView()
//}
