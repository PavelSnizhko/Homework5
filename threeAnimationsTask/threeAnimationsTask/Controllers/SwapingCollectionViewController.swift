//
//  SwapingCollectionViewController.swift
//  threeAnimationsTask
//
//  Created by Павел Снижко on 04.02.2021.
//

import UIKit

final class SwapingCollectionViewController: UICollectionViewController {
    
    private var privateViewControllers = [SnowViewController(), BirthdayViewController(), SeatleViewController()]
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
    }
      
    // MARK: - DataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return privateViewControllers.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let cellViewController = privateViewControllers[indexPath.row]
        addChild(cellViewController)
        cellViewController.view.frame = cell.bounds
        cell.addSubview(cellViewController.view)
        cellViewController.didMove(toParent: self)
        cell.setNeedsLayout()
        cell.layoutIfNeeded()
        
    }
    
    // MARK: - Private Methods
    
    private func configureCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        collectionView.isPagingEnabled = true
    }

}

// MARK: - UICollectionViewDelegateFlowLayout

extension SwapingCollectionViewController:  UICollectionViewDelegateFlowLayout {
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


