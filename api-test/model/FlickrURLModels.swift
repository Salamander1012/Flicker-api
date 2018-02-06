//
//  FlickrURLModels.swift
//  api-test
//
//  Created by Salman Fakhri on 2/2/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
//testing git

//creates url for flicker.photos.search method
struct FlickrImageSearchURL {
    let url: String
    
    init(tags: String) {
        //insert apikey below if pulled from github
        self.url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&tags=" + tags + "&api_key=" + API_KEY + "&format=json&nojsoncallback=1"
        
    }
}

struct FlickrImageURL {
    let url: String
    
    init(photo: Photo) {
        self.url = "https://farm\(photo.farm).staticflickr.com/\(photo.server)/\(photo.id)_\(photo.secret)_t.jpg"
    }
}
