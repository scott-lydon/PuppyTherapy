
import UIKit
import Foundation

extension GiphyVC {
    
    func configureFooter() {
        self.automaticallyAdjustsScrollViewInsets = false
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 100))
        footer.backgroundColor = bluePurple
        let loadMoreLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
        loadMoreLabel.text = "Pull to load more!"
        loadMoreLabel.textColor = UIColor.white
        
        self.tableView.tableFooterView = footer
        let imgView = UIImageView(image: #imageLiteral(resourceName: "arrowpng"))
        imgView
        imgView.frame = CGRect(x: self.view.bounds.size.width / 2 - 10, y: 0, width: 20, height: 40)
        self.tableView.tableFooterView?.addSubview(imgView)
        self.tableView.tableFooterView?.addSubview(loadMoreLabel)
        self.tableView.tableFooterView?.isHidden = true
        
        
    }
}


/*
 let rotationPoint = CGPoint(x: layer.frame.width / 2.0, y: layer.frame.height / 2.0) // The point we are rotating around
 
 print(rotationPoint.debugDescription)
 let width = layer.frame.width
 let height = layer.frame.height
 let minX = layer.frame.minX
 let minY = layer.frame.minY
 
 let anchorPoint = CGPoint(x: (rotationPoint.x-minX)/width,
 y: (rotationPoint.y-minY)/height)
 
 layer.anchorPoint = anchorPoint;
 layer.position = rotationPoint;
 
 */
