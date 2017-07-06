
import UIKit
import Foundation

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let image = UIImage.gif(data: gifDatas[indexPath.row]) {
            let ratio = image.size.width/image.size.height
            return tableView.frame.size.width/ratio
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let v = UIView()
        
        v.backgroundColor = UIColor.white
        let segmentedControl = UISegmentedControl(frame: CGRect(x: 10, y: 5, width: tableView.frame.width - 20, height: 30))
        segmentedControl.insertSegment(withTitle: "One", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Two", at: 1, animated: false)
        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: false)
        v.addSubview(segmentedControl)
        return v
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gifDatas.count
    }
    
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        tableView.tableFooterView?.isHidden = false
        if scrollView == tableView{
            if ((scrollView.contentOffset.y + scrollView.frame.size.height) >= scrollView.contentSize.height)
            {
                if !isNewDataLoading{
                    
                    isNewDataLoading = true
                    getSetGifs()
                    configureActivityIndicatorInFooter()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: giphCellReuseIdentifier, for: indexPath) as! GifTableViewCell
        cell.img.image = UIImage.gif(data: gifDatas[indexPath.row])
        //cell.selectionStyle = .none
        //cell.heightAnchor = cell.img.heightAnchor
        //cell.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        //cell.layoutMargins = UIEdgeInsets.zero
        //cell.img.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
        //cell.imageView?.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0)
       
        
        //had wrong effect
        //cell.contentMode = .scaleAspectFit
        //cell.img.contentMode = .scaleAspectFill
        //cell.img.contentMode = .scaleAspectFit
        
        
        //no effect
        //cell.imageView?.contentMode = .scaleAspectFill
        //cell.imageView?.contentMode = .scaleAspectFit
        //cell.imageView?.contentMode = .scaleToFill
        //cell.img.contentMode = .scaleToFill
        //cell.window?.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        return cell
    }
}
