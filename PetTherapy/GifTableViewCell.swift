
import Foundation
import UIKit

class GifTableViewCell: UITableViewCell {
    
    let img = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //let marginGuide = contentView.layoutMarginsGuide
        
        contentView.addSubview(img)
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        //img.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
    
        
        img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        img.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        img.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        
        //img.contentMode = .scaleToFill
        //img.contentMode = .scaleAspectFit //correct proportions, not large enough
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
