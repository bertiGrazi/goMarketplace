//
//  ChairViewModel.swift
//  goMarketplace
//
//  Created by Grazielli Berti on 01/05/22.
//

import Foundation

class ChairViewModel {
    var businessModel: CheirProtocol = ChairBusinessModel()
    
    func fetchChairDataSource() -> [Chairs] {
        businessModel.listDataSource()
    }
}
