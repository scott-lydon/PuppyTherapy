
import UIKit
import Foundation

extension Array {
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

extension Get {
        func firstGiphData(searchTerms: [String], completion: @escaping ([[String]]) -> Void)  {
        var isBigScreen = false
        let deviceName = UIDevice.current.deviceName()
        if deviceName == "iPhone7,1" || deviceName == "iPhone8,2" || deviceName == "iPhone9,2" || deviceName == "iPhone9,4" || UIDevice.current.model == "iPad" {
            isBigScreen = true
        }
            
        let petOptions = ["dogs", "puppies", "kittens", "cats", "penguin", "otter", "red+panda", "fennec+fox", "baby+hamster", "baby+mouse", "baby+elephant", "baby+seal", "baby+raccoon", "baby+pig", "baby+bunny", "bunny", "baby+sloth", "baby+panda", "baby+fox", "baby+monkey", "baby+hedgehog", "duckling", "kitten", "baby+ferret"]
        
        let kURL = "http://api.giphy.com/v1/gifs/search?q=\(petOptions.randomItem())&api_key=291f380b87884fc8996bd9d0078c42e3&limit=30&offset=\(callCount)"
        callCount += 30
        let newsURL = URL(string: kURL)
        let task = URLSession.shared.dataTask(with: newsURL! as URL) {
            (data, response, error) in
            if error != nil {
                print("there is an error -SL")
            } else {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
                    if let giphData = json["data"] as? [[String: Any]] {
                        print(UIDevice.current.model)
                        var giphArr = [[String]]()
                        for giphy in giphData {
                            if let id = giphy["id"] as? String {
                                if let images = giphy["images"] as? [String: Any] {
                                    
                                    var giphSize = "fixed_width"
                                    if isBigScreen {
                                        giphSize = "original"
                                    }
                                    print("reached here")
                                    if let fixedWidth = images[giphSize] as? [String: String] {
                                        if let url = fixedWidth["url"] {
                                         
                                                if id != "yjGdFXjeQsDqJNSzE4" {
                                                    print("reached here")
                                                    giphArr += [[url, id]]
                                                    print(url)
                                                }
                                            
                                       }
                                    }
                               }
                            }
                        }
                        completion(giphArr)
                    }
                } catch {print("caught")}
            }
        }// URLSession...
        task.resume()
        
    }//firstGiphData
}//Get

extension UIDevice {
    func deviceName() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let str = withUnsafePointer(to: &systemInfo.machine.0) { ptr in
            return String(cString: ptr)
        }
        return str
    }
}


