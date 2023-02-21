//
//  GroupCell.swift
//  CollectionView
//
//  Created by Hayk Sakulyan on 20.02.23.
//

import UIKit

class GroupCell: UICollectionViewCell {
    
    @IBOutlet weak var nameGroup: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(group: Group) {
        nameGroup.text = group.name
    }

}
