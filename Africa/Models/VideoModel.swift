//
//  VideoModel.swift
//  Africa
//
//  Created by Kulkarni, Pranav on 02/01/24.
//

import Foundation

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
