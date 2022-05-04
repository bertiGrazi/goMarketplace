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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.itemSize = CGSize(width: 170, height: 241)

            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
            collectionView.register(
                HomeChairsCollectionViewCell.self,
                forCellWithReuseIdentifier: HomeChairsCollectionViewCell.identifier)
            collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        
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
}
