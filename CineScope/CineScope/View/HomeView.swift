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
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()
                        .ignoresSafeArea(edges: .top)
                }
                Spacer()
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

struct MovieCarouselView: View {
    var movies: [Movie]
    var body: some View {
        ForEach(movies) { movie in
            Text(movie.title)
        }
    }
}
