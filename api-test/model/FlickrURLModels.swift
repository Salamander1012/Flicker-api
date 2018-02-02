//
//  FlickrURLModels.swift
//  api-test
//
//  Created by Salman Fakhri on 2/2/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation

//creates url for flicker.photos.search method
struct FlickrImageSearchURL {
    let url: String
    
    init(tags: String) {
        //insert apikey below if pulled from github
        self.url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&tags=" + tags + "&api_key=" + API_KEY.keyInstance.key + "&format=json&nojsoncallback=1"
        
    }
}
