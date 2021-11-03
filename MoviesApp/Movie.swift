//
//  Movie.swift
//  MoviesApp
//
//  Created by Ferdi DEMİRCİ on 31.10.2021.
//

import Foundation

struct Movie:Codable {
    let title: String
    let categories: [String]
    let duration: String
    let rating: Double
    let summary: String
    let imageName: String
    
    var imageSmall: String {
        return imageName + "-small.jpeg"
    }
    var imageWide: String {
        return imageName + "-wide.jpeg"
    }
    var categoriDescription: String {
        return categories.joined(separator: " | ")
    }
    enum CodingKeys: String, CodingKey {
        case title
        case categories
        case duration
        case rating
        case summary
        case imageName = "image_name"
    }
    
}
