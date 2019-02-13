//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Matthew Harkey on 2/12/19.
//  Copyright © 2019 Matthew Harkey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var classNameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var detailItem: Planner? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let homework = self.detailItem {
            homework.className = classNameTextField.text!
            homework.dueDate = dueDateTextField.text!
            homework.description = descriptionTextField.text!
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    
    func configureView() {
        // Update the user interface for the detail item.
        if let homework = detailItem {
            if classNameTextField != nil {
                classNameTextField.text = homework.className
                dueDateTextField.text = homework.dueDate
                descriptionTextField.text = homework.description
                imageView.image = UIImage(data: homework.image)
            }
        }
    }

}

