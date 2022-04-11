//
//  ReservationListView.swift
//  CrossfitSTBJamsil
//
//  Created by miori Lee on 2022/04/09.
//

import Foundation
import UIKit
import SnapKit

class ReservationListView : UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .insetGrouped)
        
        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func attribute() {
        //self.backgroundColor = .white
        self.register(ReservationListCell.self, forCellReuseIdentifier: ReservationListCell.registerID)
    }
}
