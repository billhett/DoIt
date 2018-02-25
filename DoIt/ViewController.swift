//
//  ViewController.swift
//  DoIt
//
//  Created by William Hettinger on 2/25/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tasks : [Task] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var task = Task()
        task = tasks[indexPath.row]
        
        
        
        if task.important {
            cell.textLabel?.text = "❗️ \(task.name)"
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTasks() -> [Task]{
        let task1 = Task()
        task1.name = "Walk the Dog"
        let task2 = Task()
        task2.name = "Buy Cheese"
        task2.important = true
        let task3 = Task()
        task3.name = "Mow the lawn"
        
        return [task1,task2,task3]
    }
}

