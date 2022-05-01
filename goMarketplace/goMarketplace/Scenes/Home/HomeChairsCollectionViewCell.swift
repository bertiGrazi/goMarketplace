//
//  HomeChairsCollectionViewCell.swift
//  goMarketplace
//
//  Created by Grazielli Berti on 01/05/22.
//

import Foundation
import UIKit

class HomeChairsCollectionViewCell: UICollectionViewCell {
    //MARK: - Variable
    static let identifier = "HomeChairsCollectionViewCell"
    
    //MARK: - View
    private let chairView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let chairImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleToFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(chairView)
        chairView.addSubview(chairImageView)
        
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            chairView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            chairView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            chairView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20),
            chairView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            
            chairImageView.topAnchor.constraint(equalTo: chairView.topAnchor, constant: 0),
            chairImageView.leadingAnchor.constraint(equalTo: chairView.leadingAnchor, constant: 16),
            chairImageView.trailingAnchor.constraint(equalTo: chairView.trailingAnchor, constant: -16),
            chairImageView.widthAnchor.constraint(equalToConstant: 122),
            chairImageView.heightAnchor.constraint(equalToConstant: 122),
        ])
    }
    
    func configCell(data: Chairs) {
        chairImageView.image = data.image.image
    }
}
