
import UIKit
import Foundation


extension ViewController
{
    func getSetGifs()
    {
        Get.shared.firstGiphData(searchTerms: ["dog", "cat", "koala", "kitten", "puppy", "sloth"])
        {
            (gifArr) in
            
            
            Get.shared.secondGiphData(giphARr: gifArr, completion:
            { (dataArr) in
                
                self.gifDatas += dataArr
                DispatchQueue.main.async
                {
                    
                    self.activityIndicator.stopAnimating()
                    self.activityIndicator2.stopAnimating()
                    self.tableView.reloadData()
                    self.isNewDataLoading = false
                }
            })
        }
    }
}
