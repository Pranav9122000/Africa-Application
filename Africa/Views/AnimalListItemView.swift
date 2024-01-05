//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 29/12/23.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 6) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

//#Preview {
//    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
//    AnimalListItemView(animal: animals[1])
//}
