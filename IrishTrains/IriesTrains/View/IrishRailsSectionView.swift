//
//  IrishRailsSectionView.swift
//  IriesTrains
//
//  Created by Anita Agrawal on 11/05/19.
//  Copyright © 2019 Anita Agrawal. All rights reserved.
//

import UIKit

protocol IrishRailsSectionViewProtocol {
    func selectedSection(sectionNumber: Int)
}

class IrishRailsSectionView: UITableViewHeaderFooterView {

    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var arrowButton: UIButton!
    
    var delegate: IrishRailsSectionViewProtocol?
    
    @IBAction func selectSectionButtonAction(_ sender: UIButton) {
        delegate?.selectedSection(sectionNumber: tag)
    }
    
}
