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
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
        Chairs(image: UIImageView(image: UIImage(named: "cadeira_1")), nameChair: "Cadeira Gamer Charles", priceChair: "R$ 300,00"),
       ]
    }
}
