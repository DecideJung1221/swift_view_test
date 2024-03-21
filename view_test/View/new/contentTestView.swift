//
//  contentTestView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct contentTestView: View {
    @State var showDetail = false
    @State var date = Date()
    
    var body: some View {
        
        
        ZStack {
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
                           
            
            VStack{
                Image("MOA_mini").padding()
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
                
                Spacer()
                // 말풍선
                ZStack{
                    Image("newView_p")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text("흰옷을 입은 사람")
                }
                
                Spacer()
                
                HStack(spacing:10){
                    
                    
                    HStack(alignment: .top, content: {
                        //모아 캐릭터
                        VStack{
                            Image("newView_human")
                            Image("MOA_mini")
                        }
                        Image("newView_star")
                    })
                    .padding()
                    //stranger
                    VStack{
                        Image("stranger")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150,height: 150,alignment: .topTrailing)
                        Text("Skip")
                            .bold()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,alignment: .bottom)
                        
//                        Image("skip")
//                            .resizable()
//                            .frame(width: 50,height: 30,alignment: .bottom)
                    }
                    .offset(x: -60, y: -60)
                }
                .offset(x: -10)
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
    contentTestView()
}
