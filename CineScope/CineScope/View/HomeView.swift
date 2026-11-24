//
//  HomeView.swift
//  CineScope
//
//  Created by Arnold Dominguez on 23/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var movieCatalog: [Movie] = MockMovieProvider.getMovies().shuffled()
    
    private var featuredMovie: Movie? {
        movieCatalog.first
    }
    private var carouselMovies: [Movie] {
        Array(movieCatalog.dropFirst())
    }
    
    var body: some View {
        VStack {
            if movieCatalog.isEmpty {
                Text("No movies yet")
            } else {
                if let featuredMovie = featuredMovie {
                    FeaturedMovieView(movie: featuredMovie)
                        .frame(width: 300, height: 200)
                        .background(.red)
                        .clipShape(.buttonBorder)
                }
                if !carouselMovies.isEmpty {
                    MovieCarouselView(movies: carouselMovies)
                        .frame(width: 300, height: 40)
                        .background(.red)
                        .clipShape(.capsule)
                }
            }
        }
    }
}

struct FeaturedMovieView: View {
    var movie: Movie
    var body: some View {
        VStack {
            Text(movie.title)
        }
    }
}

struct MovieCarouselView: View {
    var movies: [Movie]
    var body: some View {
        ForEach(movies) { movie in
            Text(movie.title)
        }
    }
}
