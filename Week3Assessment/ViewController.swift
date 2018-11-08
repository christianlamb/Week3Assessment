//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
     let arrayOfPersons = [Person]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPersons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as!TableViewCell
        let person = arrayOfPersons[indexPath.row]
        cell.favThing.text = person.favoriteThing
        cell.Name.text = person.name
        cell.backgroundColor = person.favoriteColor
        
        
        
        
        return cell
        
       
    }
    
    
   
    
   
    
    
    @IBOutlet weak var TableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let person1 = Person(name: "BOB", favoriteThing: "Dog", favoriteColor: UIColor.blue)
          let person2 = Person(name: "ROB", favoriteThing: "Car", favoriteColor: UIColor.brown)
          let person3 = Person(name: "ROG", favoriteThing: "House", favoriteColor: UIColor.purple)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

