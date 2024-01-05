//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 02/01/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundStyle(.accent)
            }
        }
    }
}

//#Preview {
//    ExternalWebLinkView()
//}
