//
//  ApiCalls.swift
//  api-test
//
//  Created by Salman Fakhri on 1/30/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

//SWAPI API EXAMPLE

import Foundation
import Alamofire


func getMovieData(completion: @escaping (MovieList)-> ()) {
    
    print("getting data...")
    Alamofire.request("https://swapi.co/api/films/").response { response in
        guard let data = response.data else {return}
        do {
            let movieData = try JSONDecoder().decode(MovieList.self, from: data)
            //print(movieData)
            completion(movieData)
            
        } catch let jsonErr {
            print(jsonErr)
            
        }
    }
    
}
