//
//  ViewController.swift
//  learnSwift
//
//  Created by Артём Ермаков on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttonSend: UIButton!
    @IBOutlet var labelTarget: UILabel!
    @IBOutlet var inputTarget: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var switchName: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTarget.textColor = .white
        
        inputTarget.placeholder = "Enter messages..."
        inputTarget.clearButtonMode = .whileEditing
        
        datePicker.date = .distantFuture
        
        switchName.isOn = true
        
    }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        let dateValue = dateFormatter.string(from: sender.date)
        
        labelTarget.text = dateValue
    }
    @IBAction func sendTextInLabel(_ sender: UIButton) {
        guard inputTarget.text != "" else { return }
        
        if let _ = Double(inputTarget.text!){
            
            let alert = UIAlertController(title: "Wrong text \(inputTarget.text!)", message: "Enter your name", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            
            present(alert, animated: true, completion: nil)
            
            alert.addAction(ok)
            alert.addAction(cancel)
            inputTarget.text = ""
        } else {
            labelTarget.text = inputTarget.text
            inputTarget.text = ""
        }
    }
    
    @IBAction func hideName(_ sender: UISwitch) {
        if(sender.isOn == false){
            nameLabel.isHidden = true
        } else {
            nameLabel.isHidden = false
        }
        
    }
    
    
}

