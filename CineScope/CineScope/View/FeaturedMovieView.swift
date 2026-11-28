//
//  FeaturedMovieView.swift
//  CineScope
//
//  Created by Arnold Dominguez on 23/11/26.
//

import SwiftUI

struct FeaturedMovieView: View {
    var movie: Movie
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(movie.title)
                    .font(.title)
                    .foregroundStyle(.white)
                    .lineLimit(3)
                    .frame(maxWidth: 300)
                if let releaseDate = movie.releaseDate {
                    Text(releaseDate.formatted(date: .abbreviated, time: .omitted))
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(movie.genres) { genre in
                            Text(genre.name)
                                .padding(10)
                                .background(.gray)
                                .clipShape(.capsule)
                        }
                    }
                }
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        .background {
            ZStack {
                AsyncImage(url: movie.poster) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
                LinearGradient(colors: [Color(uiColor: UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.3)),
                    Color.black], startPoint: .top, endPoint: .bottom)
            }
        }
    }
}
