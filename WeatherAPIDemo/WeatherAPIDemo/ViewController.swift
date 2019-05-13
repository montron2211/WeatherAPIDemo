//
//  ViewController.swift
//  WeatherAPIDemo
//
//  Created by Monmon on 5/13/19.
//  Copyright © 2019 Monmon. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
   
    var dataWeather: WeatherService?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setDataFromAPI()
    }
    
    func setDataFromAPI() {
        DataService.api.getWeatherFromAPI() { (weatherService) in
            self.dataWeather = weatherService
            self.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = dataWeather?.location.name
        cell.countryLabel.text = dataWeather?.location.country
        cell.localTimeLabel.text = dataWeather?.location.localTime
        
        return cell
    }


}



