
import UIKit

class ViewController: UIViewController {

    let giphCellReuseIdentifier = "giphCellReuseIdentifier"
    var gifDatas = [Data]()
    let tableView = UITableView()
    var activityIndicator = UIActivityIndicatorView()
    var activityIndicator2 = UIActivityIndicatorView()
    var gifCounter = [String: Bool]()
    var isNewDataLoading = false
    var callCount = 0
    
    
    let giphyLogoView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        //FAILED: view.contentMode = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        title = "Gifs"
        
        
        

        getSetGifs()
        configureTableView()
        configureFooter()
        configureActivityIndicator()
        
        tableView.addSubview(giphyLogoView)
        tableView.bringSubview(toFront: giphyLogoView)
     
        giphyLogoView.frame = CGRect(x: 0, y: 0, width: 50, height: 70)
    
        giphyLogoView.loadGif(name: "giphyLogo")
                //giphyLogoView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        //giphyLogoView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}




