//
//  MovieDetail.swift
//  UIKit SwiftUI
//
//  Created by Mateus Kamoei on 22/07/20.
//  Copyright © 2020 Kobe. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Text(movie.title)
                        .font(.largeTitle)
                    Text("\(movie.year)")
                }
                Spacer()
            }
            VStack {
                if !movie.genres.isEmpty {
                    Divider()
                    Text(movie.genres.joined(separator: ", "))
                        .font(.caption)
                }
                Divider()
                if movie.cast.isEmpty {
                    Text("No cast data")
                    Spacer()
                } else {
                    List(movie.cast, id: \.self) { actor in
                        Text(actor)
                    }
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let movie = Movie(title: "Titanic", year: 2001, cast: ["Leonardo DiCaprio", "Kate Winslet"], genres: ["Drama", "Family", "Horror", "Comedy", "Documentary", "Romance"])
        return MovieDetail(movie: movie)
    }
}
