//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Manny on 1/28/19.
//  Copyright © 2019 devPro. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk into a bar...", "Olives", "Racer", "Programmers"]
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let joke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition", sender: joke)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            if let selectedJoke = sender as? String {
                 jokeVC.joke = selectedJoke
            }
        }
    }
}
