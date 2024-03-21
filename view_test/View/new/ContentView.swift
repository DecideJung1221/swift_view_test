//
//  ContentView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI


struct ContentView: View {
    @State var showDetail = false
    @State var date = Date()
    
    var body: some View {
        
        
        ZStack {
            
            
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
                           
            
            VStack{
                Text("날짜를 선택하세요")
                    .font(.title2)
                    .offset(y:10)
                DatePicker("date"
                           ,
                           selection: $date,
                           displayedComponents: [.date]
                )
                .padding()
                .background(.blue)
                .cornerRadius(15)
                .padding()
                Spacer()
                Text("랜덤사람")
            }
//            if showDetail {
//                DetailView(showDetail: self.$showDetail)
//            } else {
//                VStack {
//                    Button(action: {
//                        self.showDetail = true
//                    }) {
//                        Text("Show Detail View")
//                    }
//                }
//             
//            }
            
//            TabView {
//                testView()
//                    .tabItem {
//                        Label("Received", systemImage: "tray.and.arrow.down.fill")
//                    }
//            }
        }
        
    }
}


#Preview {
    ContentView()
}
