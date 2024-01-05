//
//  HeadingView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 31/12/23.
//

import SwiftUI

struct HeadingView: View {
    
    var headingText: String
    var headingImage: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    HeadingView(headingText: "Wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
}
