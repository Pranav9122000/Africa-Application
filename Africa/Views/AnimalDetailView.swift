//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 31/12/23.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 10) {
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundStyle(.primary)
                        .underline(true, pattern: .solid, color: .accent)
                    
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.accent)
                        .padding(.horizontal)
                    
                    Group {
                        HeadingView(headingText: "Wilderness in Pictures", headingImage: "photo.on.rectangle.angled")
                        
                        InsetGalleryView(animal: animal)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        HeadingView(headingText: "Did you know?", headingImage: "questionmark.circle")
                        
                        InsetFactView(animal: animal)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        HeadingView(headingText: "All aboout \(animal.name)", headingImage: "info.circle")
                        
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    }
                    .padding(.horizontal)
                    
                    Group {
                        HeadingView(headingText: "National Parks", headingImage: "map")
                        
                        InsetMapView()
                    }
                    .padding(.horizontal)
                    
                    Group {
                        HeadingView(headingText: "Learn More", headingImage: "books.vertical")
                        
                        ExternalWebLinkView(animal: animal)
                    }
                    .padding(.horizontal)
                    
                }
            }
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

//#Preview {
//    AnimalDetailView()
//}
