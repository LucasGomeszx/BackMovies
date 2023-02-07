//
//  PosterViewController.swift
//  BackMovies
//
//  Created by Lucas Gomesx on 07/02/23.
//

import UIKit

class PosterViewController: UIViewController {
    
    
    @IBOutlet weak var posterCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }
    
    func configCollectionView(){
        posterCollectionView.delegate = self
        posterCollectionView.dataSource = self
        if let layout = posterCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            layout.estimatedItemSize = .zero
        }
        posterCollectionView.register(MovieCollectionViewCell.nib(), forCellWithReuseIdentifier: MovieCollectionViewCell.identifier )
    }
    
}

extension PosterViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.identifier, for: indexPath) as? MovieCollectionViewCell
        cell?.setUpCell()
        return cell ?? UICollectionViewCell()
    }
    
}
