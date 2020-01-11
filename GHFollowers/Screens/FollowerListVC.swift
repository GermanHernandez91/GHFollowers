//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by German Hernandez on 11/01/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCellCollectionView()
        getFollowers()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func configureCellCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayot = UICollectionViewFlowLayout()
        flowLayot.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayot.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayot
    }
    
    
    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
                
            case .success(let followers):
                print("Followers.count = \(followers.count)")
                print(followers)
                
            case .failure(let error):
                 self.pressentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }

}
