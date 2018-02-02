//
//  KakitomeruViewController.swift
//  positive
//
//  Created by milou Tanaka on 2017/11/10.
//  Copyright © 2017年 Milou Tanaka. All rights reserved.
//

import UIKit

class KakitomeruViewController: UIViewController{
    
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
    @IBOutlet var sevebutton: UIButton!
    
    var saveData : UserDefaults = UserDefaults.standard
    var check : Int = 0
    var tapkaisuu : Int = 0
    
    var is1Checked = false
    var is2Checked = false
    var is3Checked = false
    var is4Checked = false
    var is5Checked = false
    
    var diary: Diary!
    
    
    func checkMethod() {
        checkbutton1.setTitle("OK?", for: .normal)
        checkbutton2.setTitle("OK?", for: .normal)
        checkbutton3.setTitle("OK?", for: .normal)
        checkbutton4.setTitle("OK?", for: .normal)
        checkbutton5.setTitle("OK?", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diary = Diary.getTodaysDiary(day: Date())
        textview1.text = diary.positive1
        textview2.text = saveData.object(forKey: "text2") as? String
        textview3.text = saveData.object(forKey: "text3") as? String
        textview4.text = saveData.object(forKey: "text4") as? String
        textview5.text = saveData.object(forKey: "text5") as? String
        
    }
    @IBAction func saveText() {
//        //新規
//        let diary = Diary()
//        diary.positive1 = textview1.text
//        diary.positive2 = textview2.text
//        diary.positive3 = textview3.text
//        diary.positive4 = textview4.text
//        diary.positive5 = textview5.text
//        diary.save()
      
//更新
diary.update {
    diary.positive1 = textview1.text
    diary.positive2 = textview2.text
    diary.positive3 = textview3.text
    diary.positive4 = textview4.text
    diary.positive5 = textview5.text
}

        
        if is1Checked == true {
            saveData.set(textview1.text,forKey: "text1")
            tapkaisuu = tapkaisuu + 1
        }
        if is2Checked == true {
            saveData.set(textview2.text,forKey: "text2")
            tapkaisuu = tapkaisuu + 1
        }
        if is3Checked == true {
            saveData.set(textview3.text,forKey: "text3")
            tapkaisuu = tapkaisuu + 1
        }
        if is4Checked == true {
            saveData.set(textview4.text,forKey: "text4")
            tapkaisuu = tapkaisuu + 1
        }
        if is5Checked == true {
            saveData.set(textview5.text,forKey: "text5")
            tapkaisuu = tapkaisuu + 1
        }
       
      
        let alert: UIAlertController = UIAlertController(title: "\(tapkaisuu)/5個", message: "保存完了！",preferredStyle: .alert)
        
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: { action in
                    
                    self.dismiss(animated: true, completion: nil)
                }
            )
        )
        present(alert, animated: true, completion: nil)
    }
    
    func add() {
        tapkaisuu = tapkaisuu + 1
        }
    
    
    
    @IBAction func check1() {
        guard  textview1.text  == "" else{
            checkbutton1.setTitle("✔︎", for: .normal)
            is1Checked = true
            return
        }
    }
    @IBAction func check2() {
        guard textview2.text  == "" else{
            checkbutton2.setTitle("✔︎", for: .normal)
            is2Checked = true
            return
        }
    }
    @IBAction func check3() {
        guard textview3.text == "" else{
        checkbutton3.setTitle("✔︎", for: .normal)
        is3Checked = true
        return
        }
    }
     @IBAction func check4() {
        guard textview4.text == "" else{
        checkbutton4.setTitle("✔︎", for: .normal)
            is4Checked = true
            return
        }
    }
    @IBAction func check5() {
        guard textview5.text == "" else{
        checkbutton5.setTitle("✔︎", for: .normal)
        is5Checked = true
        return
        }
    }
}


