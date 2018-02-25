//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by William Hettinger on 2/25/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //create a task from outlet info
        let task = Task()
        task.name = taskNameTextField.text!

        task.important = importantSwitch.isOn
        print("item is \(task.name) and important is \(task.important)")
        //add new task to tasks array in previous vc
        previousVC.tasks.append(task)
        print("tasks array is now :\(previousVC.tasks)")
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
