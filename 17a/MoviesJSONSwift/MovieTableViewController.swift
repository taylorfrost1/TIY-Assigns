//
//  MovieTableViewController.swift
//  MoviesJSONSwift
//
//  Created by Taylor Frost on 6/15/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    typealias JSONDictionary = [String:AnyObject]
    typealias JSONArray = [JSONDictionary]
    var moviesArray = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filePath = NSBundle.mainBundle().URLForResource("popular", withExtension: "json") {
            
            if let data = NSData(contentsOfURL: filePath) {
                
                do {
                    
                    if let jsonDict = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? JSONDictionary {
                        
                        print(jsonDict)

//                        let theMovie = Movie()
//                        
//                        if let page = jsonDict["page"] as? String {
//                            theMovie.page = page
//                        } else {
//                            print("Could not parse the pages")
//                        }
                        
                        if let resultsArray = jsonDict["results"] as? JSONArray {
                            
                            for dict in resultsArray {
                                
                                let theMovie = Movie()
                                
                                if let posterPath = dict["poster_path"] as? String {
                                    theMovie.poster_path = posterPath
                                    
                                } else {
                                    print("The posters cannot be parsed")
                                }
                                
                                if let adult = dict["adult"] as? Bool{
                                    theMovie.adult.boolValue
                                } else {
                                    print("I could not parse the adult")
                                }
                                
                                if let overview = dict["overview"] as? String{
                                    theMovie.overview = overview
                                } else {
                                    print("The overviews could not be parsed")
                                }
                            
                                if let releaseDate = dict["string"] as? String{
                                    theMovie.release_date = releaseDate
                                } else {
                                
                                
                            }
                        }
                        
                    }
                } catch {
                    print("Something went wrong parsing the data")
                }
                }
            }
            
            
        }
    


    // MARK: Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

    

        return cell
    }
    

}
