//
//  ProductCell.swift
//  CollectionView
//
//  Created by Hayk Sakulyan on 19.02.23.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
    }

    func setupCell(product: Product) {
        productImage.image = product.image
    }
}
