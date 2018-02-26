//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by William Hettinger on 2/25/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    var previousVC = TasksViewController()
    var task = Task()
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //task = previousVC.tas
        taskLabel.text = task.name
        if task.important {
            taskLabel?.text = "❗️ \(task.name)"
            
        } else {
            taskLabel?.text = task.name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedItemCompleted(_ sender: UIButton) {
        print("task \(task) completed and deleted")
        previousVC.tasks.remove(at: previousVC.selectedRow)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    
}
