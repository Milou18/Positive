//
//  FurikaeruViewController.swift
//  
//
//  Created by milou Tanaka on 2017/12/15.
//

import UIKit
import JBDatePicker


class FurikaeruViewController: UIViewController ,JBDatePickerViewDelegate {
    
    
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        memory1.text = formatter.string(for: dayView.date)
        
    }
    
    
     @IBOutlet var memory1:UITextView!
     @IBOutlet var memory2:UITextView!
     @IBOutlet var memory3:UITextView!
     @IBOutlet var memory4:UITextView!
     @IBOutlet var memory5:UITextView!
     @IBOutlet var datePicker: JBDatePickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
