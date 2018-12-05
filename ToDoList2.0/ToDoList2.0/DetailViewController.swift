//
//  DetailViewController.swift
//  ToDoList2.0
//
//  Created by Kayla M on 11/16/18.
//  Copyright © 2018 Kayla M. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //TODO: connect outlets to objects
    @IBOutlet weak var itemField: UITextField!
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var toDoItem: String?
    var toDoNoteItem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let toDoItem = toDoItem {
            itemField.text = toDoItem
            self.navigationItem.title = "Edit To-Do Item"
        } else {
            self.navigationItem.title = "New To-Do Item"
        }
        if let toDoNoteItem = toDoNoteItem {
            noteView.text = toDoNoteItem
        }
        enableDisableSaveButton()
        itemField.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UnwindFromSave" {
            toDoItem = itemField.text
            toDoNoteItem = noteView.text
        }
    }
    
    func enableDisableSaveButton() {
        if let itemFieldCount = itemField.text?.count, itemFieldCount > 0 {
            saveButton.isEnabled = true
        } else {
            saveButton.isEnabled = false
        }
    }
   @IBAction func itemFieldChanged(_ sender: UITextField) {
        enableDisableSaveButton()
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
