//
//  StarTableViewController.swift
//  StarswarsTableView
//
//  Created by Taylor Frost on 6/15/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class StarTableViewController: UITableViewController {
    
    var starwarsArray = [Star]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        return thisIsAmazing()
        
    }
        func thisIsAmazing() {
        
        let ObiWan = Star(name: "Obi-Wan Kenobi", imageName: "kenobi")
        self.starwarsArray.append(ObiWan)
        
        let Luke = Star(name: "Luke Skywalker", imageName: "skywalker")
        self.starwarsArray.append(Luke)
        
        let Rtoo = Star(name: "R2-D2", imageName:"r2")
        self.starwarsArray.append(Rtoo)
        
        let LordVader = Star(name: "Darth Vader", imageName: "vader")
        self.starwarsArray.append(LordVader)
        
        let leia = Star(name: "Princess Leia", imageName: "organa")
        self.starwarsArray.append(leia)
        
        let lordTarkin = Star(name: "Captain Tarkin", imageName: "tarkin")
        self.starwarsArray.append(lordTarkin)
        
    }


   //MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return self.starwarsArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! StarTableViewCell
        
        let starwars = self.starwarsArray[indexPath.row]
        
        cell.starLabel.text = starwars.name
        
        cell.starImageView.image = UIImage(named: starwars.imageName)

       

        return cell
    }
 
}
