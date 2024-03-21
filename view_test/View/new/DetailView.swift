////
////  DetailView.swift
////  view_test
////
////  Created by 정혜정 on 3/21/24.
////
//
//import SwiftUI
//
//struct DetailView: View {
//    @Binding var showDetail: Bool
//    @State var isPresented = false
//    @State var tapPresented = false
//    
//    var body: some View {
//        VStack {
//            Text("This is the Detail View")
//            
//            Button(action: {
//                        self.isPresented.toggle()
//                    }) {
//                        Text("Show Modal View")
//                    }
//                    .sheet(isPresented: $isPresented) {
//                        ModalView()
//                    }
//            
////            if showDetail {
////                DetailView(showDetail: self.$showDetail)
////            } else {
////                VStack {
////                    Button(action: {
////                        self.showDetail = true
////                    }) {
////                        Text("Show Detail View")
////                    }
////                }
////            }
//            
////            if tapPresented {
////                TabView(tapPresented: $tapPresented)
////            } else {
////                VStack {
////                    Button(action: {
////                        self.tapPresented = true
////                    }) {
////                        Text("Tap View")
////                    }
////                }
////            }
//            
//            Button(action: {
//                self.showDetail = false
//            }) {
//                Text("back")
//            }
//        }
//    }
//}
//
//
////
////#Preview {
////    DetailView()
////}
