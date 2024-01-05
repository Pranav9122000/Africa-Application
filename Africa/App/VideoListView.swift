//
//  VideoListView.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 29/12/23.
//

import SwiftUI

struct VideoListView: View {
    
    @State var video: [VideoModel] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(video) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        video.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                }
            }
        }
    }
}

#Preview {
    VideoListView()
}
