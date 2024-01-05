//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 31/12/23.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
    }
}

//#Preview {
//    InsetGalleryView()
//}
