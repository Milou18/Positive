//
//  FurikaeruViewController.swift
//  
//
//  Created by milou Tanaka on 2017/12/15.
//

import UIKit
import JBDatePicker


class FurikaeruViewController: UIViewController ,JBDatePickerViewDelegate {
    
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
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        print("date selected: \(dayView.date!)")
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
