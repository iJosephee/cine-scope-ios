//
//  Movie.swift
//  CineScope
//
//  Created by Arnold Dominguez on 13/11/26.
//

import Foundation

struct Movie: Identifiable {
    let id: Int
    let title: String
    let synopsis: String?
    let releaseDate: Date?
    let genres: [Genre]
    let poster: URL?
}
