//
//  ViewController.swift
//  goMarketplace
//
//  Created by Grazielli Berti on 01/05/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Variable
    
    //MARK: - View
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let headerImageView: UIImageView = {
        let imagineView = UIImageView()
        imagineView.image = UIImage(named: "logo")
        imagineView.contentMode = .scaleToFill
        imagineView.translatesAutoresizingMaskIntoConstraints = false
        return imagineView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.960, alpha: 1)
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(headerView)
        headerView.addSubview(headerImageView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            headerView.heightAnchor.constraint(equalToConstant: 100),
            
            headerImageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor, constant: 0),
            headerImageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 0),
        ])
    }
}

