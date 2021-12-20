//
//  ContentView.swift
//  NavigationViewTagPractice
//
//  Created by DSIAdmin on 12/17/21.
//

import SwiftUI

let viewCount = 10

struct ContentView: View {
    
    @State private var selected:Int?
    @State private var viewIndex = viewCount / 2
    
    var body: some View {
        
        
        NavigationView {
            VStack{
                Picker("View Selection", selection: $viewIndex) {
                    ForEach(0..<viewCount){ index in
                        Text("\(index)")
                    }
                }.pickerStyle(.wheel)
                
                Button {
                    selected = viewIndex
                } label: {
                    Text("Go to view \(viewIndex)")
                }
                
                ForEach(0..<viewCount){ index in
                    NavigationLink(destination: Subview(selected: $selected), tag: index, selection: $selected, label: {})
                    
                }

                
            }
        }.navigationViewStyle(.stack)
        
    }
}
