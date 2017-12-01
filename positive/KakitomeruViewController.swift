//
//  KakitomeruViewController.swift
//  positive
//
//  Created by milou Tanaka on 2017/11/10.
//  Copyright © 2017年 Milou Tanaka. All rights reserved.
//

import UIKit

class KakitomeruViewController: UIViewController {
    
    @IBOutlet var textview1:  UITextView!
    @IBOutlet var textview2:  UITextView!
    @IBOutlet var textview3:  UITextView!
    @IBOutlet var textview4:  UITextView!
    @IBOutlet var textview5:  UITextView!
    @IBOutlet var checkbutton1: UIButton!
    @IBOutlet var checkbutton2: UIButton!
    @IBOutlet var checkbutton3: UIButton!
    @IBOutlet var checkbutton4: UIButton!
    @IBOutlet var checkbutton5: UIButton!
    @IBOutlet var returnbutton: UIButton!
    
    func checkMethod() {
        checkbutton1.setTitle("OK?", for: .normal)
        checkbutton2.setTitle("OK?", for: .normal)
        checkbutton3.setTitle("OK?", for: .normal)
        checkbutton4.setTitle("OK?", for: .normal)
        checkbutton5.setTitle("OK?", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func check1() {
        checkbutton1.setTitle("✔︎", for: .normal)
    }
    @IBAction func check2() {
        checkbutton2.setTitle("✔︎", for: .normal)
    }
    @IBAction func check3() {
        checkbutton3.setTitle("✔︎", for: .normal)
    }
    @IBAction func check4() {
        checkbutton4.setTitle("✔︎", for: .normal)
    }
    @IBAction func check5() {
        checkbutton5.setTitle("✔︎", for: .normal)
    }
    
    override  func  didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    //var check = KakitomeruViewController()
    //check.checkMethod()
    
}

