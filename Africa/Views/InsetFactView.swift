//
//  InsetFactView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 01/01/24.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 150, idealHeight: 170, maxHeight: 180)
        }
    }
}

//#Preview {
//    InsetFactView()
//}
