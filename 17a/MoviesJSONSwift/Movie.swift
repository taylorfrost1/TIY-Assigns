//
//  Movie.swift
//  MoviesJSONSwift
//
//  Created by Taylor Frost on 6/15/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import Foundation

class Movie {
    
    var page: String = ""
    var poster_path: String = ""
    var adult: Bool = true
    var overview: String = ""
    var release_date: String = ""
    var id: Int = 0
    var originalTitle: String = ""
    var title: String = ""
    var backdrop_path: String = ""
    var popularity: Double = 0
    var vote_count: Int = 0
    var video: Bool = true
    var vote_average: Double = 0
    
    init() {
        self.page = ""
        self.poster_path = ""
        self.adult = true
        self.overview = ""
        self.release_date = ""
        self.id = 0
        self.originalTitle = ""
        self.title = ""
        self.backdrop_path = ""
        self.popularity = 0
        self.vote_count = 0
        self.video = true
        self.vote_average = 0
    }
    
}
    


   
