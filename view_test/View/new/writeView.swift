//
//  writeView.swift
//  view_test
//
//  Created by 정혜정 on 3/21/24.
//
import SwiftUI

struct writeView: View {
    @Binding var showWrite: Bool
    var body: some View {
                VStack {
                    Text("This is the Detail View")
        

        
                    Button(action: {
                        self.showWrite = false
                    }) {
                        Text("back")
                    }
                }
            }
    }


