//
//  Diary.swift
//  positive
//
//  Created by milou Tanaka on 2018/01/19.
//  Copyright © 2018年 Milou Tanaka. All rights reserved.
//

import RealmSwift

class Diary: Object {
    
    static let realm = try! Realm()
    
    @objc dynamic var positive1 = ""
    @objc dynamic var positive2 = ""
    @objc dynamic var positive3 = ""
    @objc dynamic var positive4 = ""
    @objc dynamic var positive5 = ""
    @objc dynamic var check1 = false
    @objc dynamic var check2 = false
    @objc dynamic var check3 = false
    @objc dynamic var check4 = false
    @objc dynamic var check5 = false
    @objc dynamic var date : Date = Date()
    
    static func loadall() -> [Diary]  {
        
        let diaries = realm.objects(Diary.self)
        var ret: [Diary] = []
        for diary in diaries {
            ret.append(diary)
        }
    return ret
    }
    
    static func getTodaysDiary(day: Date)  ->  Diary {
        var diary = realm.objects(Diary.self).filter("date == %@", day).first
        if diary  == nil {
            diary  =  Diary()
            diary!.date = day
            diary!.save()
        }
        return diary!
    }

    func save() {
        try!  Diary.realm.write {
            Diary.realm.add(self)
        }
    }
    
    func update(method: (() -> Void)) {
        try! Diary.realm.write {
            method()
        }
    }
    
    func delete() {
        try! Diary.realm.write {
            try! Diary.realm.write {
                Diary.realm.delete(self)
                }
            }
        }
    }
