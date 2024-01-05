//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

//#Preview {
//    AnimalGridItemView()
//}
