//
//  ReservationListVC.swift
//  CrossfitSTBJamsil
//
//  Created by miori Lee on 2022/04/09.
//

import Foundation
import UIKit
import SnapKit

class ReservationListVC : UIViewController {
    let listView = ReservationListView()

    
    override func viewDidLoad() {
        laytout()
        attribute()
        setTableView()
    }
    
    private func attribute() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Spirit To Body!"
        view.backgroundColor = .white
    }
    
    private func setTableView() {
        self.listView.delegate = self
        self.listView.dataSource = self
    }
    
    private func laytout() {
        [listView].forEach {view.addSubview($0)}
        listView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
    
}


extension ReservationListVC : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return ReservationListCellModel.secions.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ReservationListCellModel.secions[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return weekdayReservationData.count
        switch section {
        case 0 :
            return ReservationListCellModel.weekdayReservationData.count
        case 1:
            return ReservationListCellModel.weekendReservationData.count
        default:
            return 0
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ReservationListCell.registerID, for: indexPath) as? ReservationListCell else { return UITableViewCell() }
        var eachData : ClassTimeModel
        if indexPath.section == 0 {
            eachData = ReservationListCellModel.weekdayReservationData[indexPath.row]
        } else {
            eachData = ReservationListCellModel.weekendReservationData[indexPath.row]
        }
        //cell.setData(eachData)
        cell.viewModel = ReservationListCellModel(reservationCell: eachData)
        //     cell.viewModel = UserCellViewModel(userCell: userCell)
        return cell
    }
    
}
