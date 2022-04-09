//
//  ClassTimeModel.swift
//  CrossfitSTBJamsil
//
//  Created by miori Lee on 2022/04/09.
//

import Foundation

struct ClassTimeModel {
    var id : String = UUID().uuidString
    //let classAmPm : String
    let classStartTime : String
    let isSelect : Bool
    
    var time : Date {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.date(from: classStartTime)!
    }
    
    static var weekDayClassTimeData : [ClassTimeModel] = [
        ClassTimeModel(classStartTime: "07:00", isSelect: false),
        ClassTimeModel(classStartTime: "08:30", isSelect: false),
        ClassTimeModel(classStartTime: "09:30", isSelect: false),
        ClassTimeModel( classStartTime: "12:00", isSelect: false),
        ClassTimeModel(classStartTime: "17:30", isSelect: false),
        ClassTimeModel(classStartTime: "18:30", isSelect: false),
        ClassTimeModel(classStartTime: "19:30", isSelect: false),
        ClassTimeModel(classStartTime: "20:30", isSelect: false),
        ClassTimeModel(classStartTime: "21:30", isSelect: false)]
    
    static var weekendClassTimeData : [ClassTimeModel] = [ ClassTimeModel(classStartTime: "14:00", isSelect: false) ]
}

