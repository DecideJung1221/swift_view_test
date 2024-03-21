//
//  ContentView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI


struct ContentView_first: View {
    @State var showDetail = false
    @State var date = Date()
    
    var body: some View {
        
        
        ZStack {
            
            
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
                           
            
            VStack{
                Image("MOA_mini").padding()
                    .offset(y:80)
                
                HStack{
                        Image(systemName: "calendar.badge.plus")
                    
                    .font(.title)
                    .foregroundColor(Color.black)
                    .offset(x:15)
                    
                    
                    DatePicker("날짜를 선택하세요"
                               ,
                               selection: $date,
                               displayedComponents: [.date]
                    )
                    .padding()
                    .background(.blue)
                    .cornerRadius(15)
                    .padding()
                }
                .offset(y:50)
                
                
                // 말풍선
                ZStack{
                    Image("newView_p")
                        .resizable()
                        .frame(width: 300, height: 250)
                    
                    Text("흰옷을 입은 사람")
                }    .offset(y:60)
                
                
                //stranger
                VStack{
                    Image("stranger")
//
                    Image("skip")
                }.offset(x:20,y:80)
                
                //모아 캐릭터
                VStack{
                    Image("newView_star")
                        .offset(x:40,y:30)
                    Image("newView_human")
                    Image("MOA_mini")
                }
                .offset(x:-110,y:-100)
                
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
