//
//  Movies.swift
//  ClassesDemo
//
//  Created by Mahmoud Mohamed on 31/03/2021.
//

import Foundation

class Movies{
    var title = ""
    var image = ""
    var rating:Float = 0.0
    var releaseDate = 0
    var genre:[String] = []
    
    init(title:String,image:String,rating:Float,releaseDate:Int,genre:[String]) {
        self.title = title
        self.image = image
        self.rating = rating
        self.releaseDate = releaseDate
        self.genre = genre
    }
    init() {
        
    }
}
