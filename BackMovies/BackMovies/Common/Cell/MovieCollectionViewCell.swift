//
//  MovieCollectionViewCell.swift
//  BackMovies
//
//  Created by Lucas Gomesx on 07/02/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieView: UIView!
    
    static let identifier: String = "MovieCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUpCell() {
        movieView.clipsToBounds = true
        movieView.layer.cornerRadius = 20

    }

}
