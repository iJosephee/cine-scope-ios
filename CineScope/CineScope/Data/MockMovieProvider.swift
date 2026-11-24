//
//  MockMovieProvider.swift
//  CineScope
//
//  Created by Arnold Dominguez on 19/11/26.
//

import Foundation

struct MockMovieProvider {
    
    private static let genres = [
        Genre(id: 0, name: "Adventure"),
        Genre(id: 1, name: "Drama"),
        Genre(id: 2, name: "Sci-Fi"),
        Genre(id: 3, name: "Action"),
        Genre(id: 4, name: "Crime"),
        Genre(id: 5, name: "Thriller")
    ]
    
    private static let movies = [
        Movie(id: 0, title: "Interstellar", synopsis: "In a dystopian future where Earth has become near-uninhabitable, a team of astronauts embark on a mission to find a new home for humanity.", releaseDate: Date(timeIntervalSince1970: 1415145600), genres: [genres[0], genres[1], genres[2]], poster: URL(string: "https://filmartgallery.com/cdn/shop/files/Interstellar-Vintage-Movie-Poster-Original_5e283314.jpg")),
        Movie(id: 1, title: "The Dark Knight", synopsis: nil, releaseDate: Date(timeIntervalSince1970: 1216339200), genres: [genres[3], genres[4], genres[1]], poster: URL(string: "https://filmartgallery.com/cdn/shop/files/The-Dark-Knight-Vintage-Movie-Poster-Original_d0502cbe.jpg")),
        Movie(id: 2, title: "Inception", synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO, but his tragic past may doom the project and his team to disaster.", releaseDate: Date(timeIntervalSince1970: 1594857600), genres: [genres[3], genres[2], genres[5]], poster: nil)
    ]
    
    static func getMovies() -> [Movie] {
        movies
    }
}
