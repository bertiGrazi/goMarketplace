//
//  ChairBusinessModel.swift
//  goMarketplace
//
//  Created by Grazielli Berti on 01/05/22.
//

import Foundation
import UIKit

class ChairBusinessModel: CheirProtocol {
    func listDataSource() -> [Chairs] {
       return [
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: 300),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_2")), nameChair: "Cadeira Gamer AwesomeJob", priceChair: 300),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_3")), nameChair: "Cadeira Gamer Travis Red", priceChair: 300),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_4")), nameChair: "Cadeira G. Rivatti", priceChair: 200),
       ]
    }
}
