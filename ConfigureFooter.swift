
import UIKit
import Foundation

extension ViewController {
    
    func configureFooter() {
        self.automaticallyAdjustsScrollViewInsets = false
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 100))
        footer.backgroundColor = UIColor.white
        let loadMoreLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
        loadMoreLabel.text = "Pull to load more!"
        loadMoreLabel.textColor = UIColor.white
        
        self.tableView.tableFooterView = footer
        let imgView = UIImageView(image: #imageLiteral(resourceName: "arrowpng"))
      
        imgView.frame = CGRect(x: self.view.bounds.size.width / 2 - 10, y: 0, width: 20, height: 40)
        self.tableView.tableFooterView?.addSubview(imgView)
        self.tableView.tableFooterView?.addSubview(loadMoreLabel)
        //self.tableView.tableFooterView?.subviews[0].frame = CGRect(x: self.view.bounds.size.width / 2, y: 0, width: 20, height: 40)
//        self.tableView.tableFooterView?.contentMode = .scaleAspectFit
        self.tableView.tableFooterView?.isHidden = true
        
        
    }
}
