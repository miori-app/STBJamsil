//
//  ReservationListCellModel.swift
//  CrossfitSTBJamsil
//
//  Created by miori Lee on 2022/04/09.
//

import Foundation

struct ReservationListCellModel {
    private let reservationCell : ClassTimeModel
    
//    var classAmPM: String? {
//        return reservationCell.classAmPm
//    }
    
    var classStartTime : String? {
        return reservationCell.classStartTime
    }
    
    var isSelect : Bool? {
        return reservationCell.isSelect
    }
    
    static var weekdayReservationData : [ClassTimeModel] = ClassTimeModel.weekDayClassTimeData
    
    static var weekendReservationData : [ClassTimeModel] = ClassTimeModel.weekendClassTimeData
    
    static var secions = ["MON to FRI", "SAT"]
    
    init(reservationCell : ClassTimeModel) {
        self.reservationCell = reservationCell
    }
}
