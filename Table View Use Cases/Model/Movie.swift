//
//  Movie.swift
//  UIKit SwiftUI
//
//  Created by Mateus Kamoei on 22/07/20.
//  Copyright © 2020 Kobe. All rights reserved.
//

import Foundation

struct Movie: Hashable, Equatable {
    let title: String
    let year: Int
    let cast: [String]
    let genres: [String]
    
    init(dict: [String: Any]) {
        title = dict["title"] as! String
        year = dict["year"] as! Int
        cast = dict["cast"] as! [String]
        genres = dict["genres"] as! [String]
    }
    
    init(title: String, year: Int, cast: [String], genres: [String]) {
        self.title = title
        self.year = year
        self.cast = cast
        self.genres = genres
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.title == rhs.title && lhs.year == rhs.year
    }
}
