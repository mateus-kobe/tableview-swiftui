//
//  ContentView.swift
//  Table View Use Cases
//
//  Created by Mateus Kamoei on 23/08/20.
//  Copyright © 2020 Kobe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var movies: [Movie]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies, id: \.self) { movie in
                    MovieRow(movie: movie)
                }.onDelete(perform: delete)
            }
            .navigationBarTitle(Text("Movies"))
        }
    }
    
    func delete(at offsets: IndexSet) {
        movies.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let movie1 = Movie(title: "Movie 1", year: 2020, cast: ["John Doe", "Alex Doe"], genres: ["Drama", "Horror"])
        let movie2 = Movie(title: "Movie 2", year: 2005, cast: [], genres: ["Comedy"])
        let movie3 = Movie(title: "Movie 3", year: 1999, cast: ["Robert Doe", "Lucy Doe", "Cameron Doe"], genres: ["Adventure", "Thriller", "Romance"])
        return ContentView(movies: [movie1, movie2, movie3])
    }
}
