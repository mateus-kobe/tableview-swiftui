//
//  MovieRow.swift
//  Table View Use Cases
//
//  Created by Mateus Kamoei on 23/08/20.
//  Copyright © 2020 Kobe. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        NavigationLink(destination: MovieDetail(movie: movie)) {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(movie.title)
                    .font(.headline)
                    Text("\(movie.year)")
                }
                HStack {
                    ForEach(movie.genres, id: \.self) { genre in
                        Text(genre)
                            .fontWeight(.bold)
                            .font(.caption)
                            .foregroundColor(.purple)
                            .padding(3)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.purple, lineWidth: 2)
                        )
                        
                    }
                }
                ForEach(movie.cast, id: \.self) { actor in
                    Text(actor)
                        .font(.footnote)
                }
            }
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(title: "Titanic", year: 1997, cast: ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"], genres: ["Drama", "Romance"])
        return MovieRow(movie: movie)
    }
}
