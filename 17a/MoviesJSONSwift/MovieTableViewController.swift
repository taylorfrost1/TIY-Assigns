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
                        
                        if let resultsArray = jsonDict["results"] as? JSONArray {
                            
                            for dict in resultsArray {
                                
                                let theMovie = Movie()
                                
                                self.moviesArray.append(theMovie)
                                
                                if let posterPath = dict["poster_path"] as? String {
                                    theMovie.poster_path = posterPath
                                    
                                } else {
                                    print("The posters cannot be parsed")
                                }
                                
                                if let adult = dict["adult"] as? Bool{
                                    theMovie.adult = adult
                                } else {
                                    print("I could not parse the adult")
                                }
                                
                                if let overview = dict["overview"] as? String{
                                    theMovie.overview = overview
                                } else {
                                    print("The overviews could not be parsed")
                                }
                            
                                if let releaseDate = dict["release_date"] as? String{
                                    theMovie.release_date = releaseDate
                                } else {
                                    print("The release date could not be parsed")
                                }
                                
                                if let movieid = dict["id"] as? Int{
                                    theMovie.movieid = movieid
                                } else {
                                    print("The id could not be parsed")
                                }
                                
                                if let originalTitle = dict["original_title"] as? String{
                                    theMovie.originalTitle = originalTitle
                                } else {
                                    print("The originalTitle could not be parsed")
                                }
                                
                                if let title = dict["title"] as? String{
                                    theMovie.title = title
                                } else {
                                    print("The title could not be parsed")
                                }
                                
                                if let backdropPath = dict["backdrop_path"] as? String{
                                    theMovie.backdrop_path = backdropPath
                                } else {
                                    print("The backdropPath could not be parsed")
                                }
                                
                                if let popularity = dict ["popularity"] as? Double{
                                    theMovie.popularity = popularity
                                } else {
                                    print("The popularity could not be parsed")
                                }
                                
                                if let voteCount = dict["vote_count"] as? Int{
                                    theMovie.vote_count = voteCount
                                } else {
                                    print("The voteCount could not be parsed")
                                }
                                
                                if let video = dict["video"] as? Bool{
                                    theMovie.video = video
                                } else {
                                    print("The video could not be parsed")
                                }
                                
                                if let voteAverage = dict["vote_average"] as? Double{
                                    theMovie.vote_average = voteAverage
                                } else {
                                    print("The voteAverage could not be parsed")
                                }
                            }
                            
                            
                        }
                        
                        
                    }
            
                } catch {
                    print("Something went wrong parsing the data")
                }
            }
            
            
        } else {
            print("The file could not be parsed")
        }
          print(moviesArray.count)
        
        for theMovie in moviesArray {
            
            print(theMovie.title)
        }
            
        }
    


    // MARK: Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.moviesArray.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let movie = self.moviesArray[indexPath.row]
        
        cell.textLabel?.text = movie.title
        
        return cell

    }
    
}


