//
//  ReservationListCell.swift
//  CrossfitSTBJamsil
//
//  Created by miori Lee on 2022/04/09.
//

import UIKit
import SnapKit

class ReservationListCell : UITableViewCell {
    //let ampmLabel = UILabel()
    let timeLabel = UILabel()
    let checkSwitch = UISwitch()
    
    var viewModel : ReservationListCellModel? {
        didSet { bindViewModel() }
    }
    static let registerID = "\(ReservationListCell.self)"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        attribute()
        layout()
    }
    
    private func attribute() {
//        ampmLabel.font = .systemFont(ofSize: 12, weight: .bold)
//        ampmLabel.textColor = .darkGray
        timeLabel.font = .systemFont(ofSize: 13, weight: .medium)
    }
    
    private func layout() {
        [timeLabel, checkSwitch].forEach {contentView.addSubview($0)}
        timeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.leading.equalToSuperview().offset(18)
            $0.bottom.equalToSuperview().inset(8)
        }
//        timeLabel.snp.makeConstraints {
//            $0.centerY.equalTo(ampmLabel)
//            $0.leading.equalTo(ampmLabel.snp.trailing).offset(5)
//        }
        checkSwitch.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(15)
            $0.centerY.equalTo(timeLabel)
        }
    }
    
    //     func setData(_ data : ClassTimeModel) {
    //        ampmLabel.text = data.classAmPm
    //        timeLabel.text = data.classStartTime
    //        checkSwitch.isOn = data.isSelect
    //    }
    
    private func bindViewModel() {
        guard let viewModel = viewModel else {
            return
        }
        //ampmLabel.text = viewModel.classAmPM
        timeLabel.text = viewModel.classStartTime
        checkSwitch.isOn = viewModel.isSelect ?? false
    }
}
