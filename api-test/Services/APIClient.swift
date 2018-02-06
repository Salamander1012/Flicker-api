//
//  Service.swift
//  api-test
//
//  Created by Salman Fakhri on 2/2/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import Alamofire

class APIClient {
    

    
    
    static func getPhotosData(tags: String, completion: @escaping (Photos)-> ()) {
        print("getting photos data...")
        let requestURL = FlickrImageSearchURL(tags: tags)
        Alamofire.request(requestURL.url).response { response in
            guard let data = response.data else {return}
            
            do {
                let photosData = try JSONDecoder().decode(PhotosData.self, from: data)
                completion(photosData.photos)
            } catch let jsonErr {
                print(jsonErr)
            }
        }
    }
}
