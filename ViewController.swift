//
//  ViewController.swift
//  pickUpDate
//
//  Created by APPLE on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickUpDate: UIDatePicker!
    
    @IBOutlet weak var pickUpDateTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChanges(datePicker:)), for: .valueChanged)
        
        datePicker.preferredDatePickerStyle = .wheels
        
        pickUpDate.date = Date()
        pickUpDateTextField.text = formatDate(date: Date())
        
        
    }
    
    
    @objc func dateChanges(datePicker: UIDatePicker) {
        pickUpDateTextField.text = formatDate(date: datePicker.date)
    }

    
    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd yyyy"
        return formatter.string(from: date)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

