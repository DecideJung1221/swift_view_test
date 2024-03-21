//
//  contentTestView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//

import SwiftUI

struct ContentView: View {
//    @State var showDetail = false
    @State var showWrite = false
    @State var date = Date()
    
    var body: some View {
        
        
        ZStack {
            
            Color(#colorLiteral(red: 0.8106445074081421, green: 0.9772773385047913, blue: 1, alpha: 1)).ignoresSafeArea()
        if showWrite {
            writeView(showWrite: self.$showWrite)
        } else {
            
            
            VStack{
                Image("MOA_mini")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                
                
                
                HStack{
                    Image(systemName: "calendar.badge.plus")
                    
                        .font(.title)
                        .foregroundColor(Color.black)
                        .offset(x:15)
                    
                    
                    DatePicker("날짜를 선택하세요."
                               ,
                               selection: $date,
                               displayedComponents: [.date]
                    )
                    .padding()
                    
                    .background(    Color(#colorLiteral(red: 0.7626880407333374, green: 0.7578450441360474, blue: 1, alpha: 1)))
                    .cornerRadius(15)
                    .padding()
                    .frame(width: 350)
                    
                }
                Text("오늘의 사람입니다!")
                    .font(.custom("Papyrus", size: 30))
                    .padding()
                
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color(#colorLiteral(red: 0.7699218988418579, green: 1, blue: 0.7791249752044678, alpha: 1)))
                        .frame(width: 300, height: 300)
                        .shadow(color: .gray, radius: 1, x: 1, y: 1)
                    
                    
                    
                    VStack{
                        Spacer()
                        Text("흰옷을 입은 사람을 찾으세요 :)")
                            .font(.title2)
                        Spacer()
                        
                        
                        
                        HStack{
                            //skip
                            Button(action: {
                                print("skip")
                            }, label: {
                                Image(systemName: "person.slash")
                                    .imageScale(.medium)
                                    .font(.largeTitle)
                            })
                            .padding()
                            
                            
                                Button(action: {
                                    self.showWrite = true
                                    print("select")
                                },  label: {
                                    
                                    
                                    
                                    Image(systemName: "checkmark.circle")
                                        .imageScale(.medium)
                                        .font(.largeTitle)
                                })
                                .padding()
                                
                            
                            
                            
                            
                            //다시
                            Button(action: {
                                print("re")
                            }, label: {
                                Image(systemName: "arrow.clockwise.circle")
                                    .imageScale(.medium)
                                    .font(.largeTitle)
                            })
                            .padding()
                        }
                        
                    }.padding(30)
                }
                .frame(width: 300)
                Spacer()
                //                모아 캐릭터
                VStack{
                    Image("newView_human")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180,height: 150)
                    Image("MOA_mini")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                
                //                // 말풍선
                //                ZStack{
                //                    Image("newView_p")
                //                        .resizable()
                //                        .frame(width: 300, height: 300)
                //
                //                    Text("흰옷을 입은 사람")
                //                }
                //
                //                Spacer()
                //
                //                HStack(spacing:10){
                //
                //
                //                    HStack(alignment: .top, content: {
                //                        //모아 캐릭터
                //                        VStack{
                //                            Image("newView_human")
                //                            Image("MOA_mini")
                //                        }
                //                        Image("newView_star")
                //                    })
                //                    .padding()
                //                    //stranger
                //                    VStack{
                //                        Image("stranger")
                //                            .resizable()
                //                            .scaledToFit()
                //                            .frame(width: 150,height: 150,alignment: .topTrailing)
                //                        Text("Skip")
                //                            .bold()
                //                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,alignment: .bottom)
                //
                ////                        Image("skip")
                ////                            .resizable()
                ////                            .frame(width: 50,height: 30,alignment: .bottom)
                //                    }
                //                    .offset(x: -60, y: -60)
                //                }
                //                .offset(x: -10)
                //            }
                ////            if showDetail {
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
                ///////////////////////////////////////////////////////////
                
                
                    
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
