//
//  ViewController.swift
//  api-test
//
//  Created by Salman Fakhri on 1/30/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    var photos: [Photo] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    var currentPhotos: [Photo] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self


        
        APIClient.getPhotosData(tags: "rutgers") { (photos) in
            print("got photos")
            self.photos = photos.photo
            self.currentPhotos = photos.photo
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(gesture:)))
        
        view.addGestureRecognizer(tap)
      

    }
    
    @objc func dismissKeyboard(gesture: UITapGestureRecognizer) {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CourseTableViewCell
        row.setUpCell(title: currentPhotos[indexPath.row].title, imageSrc: FlickrImageURL(photo: currentPhotos[indexPath.row]).url)
        return row
    }
    
}



