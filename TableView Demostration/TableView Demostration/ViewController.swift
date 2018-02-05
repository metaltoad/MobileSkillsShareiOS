//
//  ViewController.swift
//  TableView Demostration
//
//  Created by James Simshaw on 2/5/18.
//  Copyright © 2018 James Simshaw. All rights reserved.
//

import UIKit

struct City {
    let name: String
    let description: String?
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    let cities: [City] = [
        City(name: "Portland, OR", description: "Portland (/pɔːrtlənd/) is the largest city in the U.S. state of Oregon and the seat of Multnomah County. It is a major port in the Willamette Valley region of the Pacific Northwest, at the confluence of the Willamette and Columbia rivers. The city covers 145 square miles (380 square kilometers) and had an estimated population of 639,863 in 2016,[9] making it the 26th most populous city in the United States, and the second-most populous in the Pacific Northwest.[10] Approximately 2,424,955 people live in the Portland metropolitan statistical area (MSA), making it the 25th most populous MSA in the United States. Its Combined Statistical Area (CSA) ranks 18th with a population of 3,160,488. Roughly 60% of Oregon's population resides within the Portland metropolitan area.[11]"),
        City(name: "New York, NY", description: nil),
        City(name: "Los Angeles, CA", description: nil),
        City(name: "Chicago, IL", description: nil),
        City(name: "Houston, TX", description: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 176
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityTableViewCell
        cell.nameLabel.text = cities[indexPath.row].name
        cell.descriptionLabel.text = cities[indexPath.row].description
        return cell
    }
    

}

