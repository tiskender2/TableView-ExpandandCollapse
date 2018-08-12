//
//  Section.swift
//  Collapse
//
//  Created by tolga iskender on 12.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import Foundation

struct Section {
    var genre: String
    var movies: [String]
    var expanded: Bool
    
    init(genre: String, movies: [String], expanded: Bool) {
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}
