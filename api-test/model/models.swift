//
//  models.swift
//  api-test
//
//  Created by Salman Fakhri on 1/30/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation


struct MovieList: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Movie]
}

struct Movie: Decodable {
    let title: String
    let episode_id: Int
    let opening_crawl: String
    let director: String
    let producer: String
    let release_date: String
    let characters: [String]
    let planets: [String]
    let starships: [String]
    let vehicles: [String]
    let species: [String]
    let created: String
    let edited: String
    let url: String
}

struct Photo: Decodable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
    let title: String
    let ispublic: Int
    let isfriend: Int
    let isfamily: Int
}

struct Photos: Decodable {
    let page: Int
    let pages: Int
    let perpage: Int
    let total: String
    let photo: [Photo]
}

struct PhotosData: Decodable {
    let photos: Photos
    let stat: String
}
