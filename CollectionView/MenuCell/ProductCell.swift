//
//  ProductCell.swift
//  CollectionView
//
//  Created by Hayk Sakulyan on 19.02.23.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var priceProduct: UILabel!
    @IBOutlet weak var nameProduct: UILabel!
    
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
        nameProduct.text = product.name
        priceProduct.text = "\(product.price)"
    }
}
