//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by William Hettinger on 2/25/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    var task : Task? = nil
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //task = previousVC.tas
        taskLabel.text = task!.name
        if task!.important {
            taskLabel?.text = "❗️ \(String(describing: task!.name!))"
            
        } else {
            taskLabel?.text = task!.name!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedItemCompleted(_ sender: UIButton) {
        print("task \(String(describing: task)) completed and deleted")
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    
    
}
