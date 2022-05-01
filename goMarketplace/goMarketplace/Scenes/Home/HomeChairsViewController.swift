//
//  ViewController.swift
//  goMarketplace
//
//  Created by Grazielli Berti on 01/05/22.
//

import UIKit

class HomeChairsViewController: UIViewController {
    //MARK: - Variable
    let viewModel = ChairViewModel()
    
    //MARK: - View
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let headerImageView: UIImageView = {
        let imagineView = UIImageView()
        imagineView.image = UIImage(named: "logo")
        imagineView.contentMode = .scaleToFill
        imagineView.translatesAutoresizingMaskIntoConstraints = false
        return imagineView
    }()
    
    private let cheirListCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical

            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
            collectionView.register(
                HomeChairsCollectionViewCell.self,
                forCellWithReuseIdentifier: HomeChairsCollectionViewCell.identifier)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
        
        cheirListCollectionView.dataSource = self
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(headerView)
        headerView.addSubview(headerImageView)
        view.addSubview(cheirListCollectionView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            headerView.heightAnchor.constraint(equalToConstant: 100),
            
            headerImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor, constant: 0),
            headerImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 0),
            
            cheirListCollectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0),
            cheirListCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cheirListCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            cheirListCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

extension HomeChairsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.fetchChairDataSource().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeChairsCollectionViewCell.identifier, for: indexPath) as? HomeChairsCollectionViewCell else { return UICollectionViewCell() }
        cell.configCell(data: viewModel.fetchChairDataSource()[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let size:CGFloat = 246
        return CGSize(width: size, height: size)
    }
}
