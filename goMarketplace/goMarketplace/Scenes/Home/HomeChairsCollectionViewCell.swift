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
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let chairImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleToFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    private let nameChairLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.23, green: 0.23, blue: 0.30, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.90, green: 0.24, blue: 0.35, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addChairButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(addingToCart), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(chairView)
        chairView.addSubview(chairImageView)
        chairView.addSubview(nameChairLabel)
        chairView.addSubview(valueLabel)
        chairView.addSubview(addChairButton)
        
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func addingToCart() {
        print("Add")
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            chairView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            chairView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            chairView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            chairView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            chairImageView.topAnchor.constraint(equalTo: chairView.topAnchor, constant: 10),
            chairImageView.leadingAnchor.constraint(equalTo: chairView.leadingAnchor, constant: 10),
            chairImageView.trailingAnchor.constraint(equalTo: chairView.trailingAnchor, constant: -10),
            chairImageView.heightAnchor.constraint(equalToConstant: 122),
            
            nameChairLabel.topAnchor.constraint(equalTo: chairImageView.bottomAnchor, constant: 10),
            nameChairLabel.leadingAnchor.constraint(equalTo: chairView.leadingAnchor, constant: 10),
            nameChairLabel.trailingAnchor.constraint(equalTo: chairView.trailingAnchor, constant: -10),

            valueLabel.topAnchor.constraint(equalTo: nameChairLabel.bottomAnchor, constant: 5),
            valueLabel.leadingAnchor.constraint(equalTo: chairView.leadingAnchor, constant: 10),
            valueLabel.trailingAnchor.constraint(equalTo: chairView.trailingAnchor, constant: -10),
            valueLabel.bottomAnchor.constraint(equalTo: chairView.bottomAnchor, constant: -10),
            
            addChairButton.topAnchor.constraint(equalTo: nameChairLabel.bottomAnchor, constant: 5),
            //addChairButton.leadingAnchor.constraint(equalTo: valueLabel.leadingAnchor, constant: 50),
            addChairButton.trailingAnchor.constraint(equalTo: valueLabel.trailingAnchor, constant: -5),
            addChairButton.bottomAnchor.constraint(equalTo: chairView.bottomAnchor, constant: -10),
        ])
    }
    
    func configCell(data: Chairs) {
        chairImageView.image = data.image.image
        nameChairLabel.text = data.nameChair
        valueLabel.text = data.priceChair
    }
}
