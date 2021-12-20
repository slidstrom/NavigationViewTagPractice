//
//  Subview.swift
//  NavigationViewTagPractice
//
//  Created by DSIAdmin on 12/17/21.
//

import SwiftUI

struct Subview: View {
    
    @Binding var selected:Int?
    
    var body: some View {
        
        VStack {
            Text("This is view \(selected ?? 1)")
            
            Button {
                selected = nil
            } label: {
                Text("Go back")
            }

        }.navigationBarHidden(true)
    }
}

