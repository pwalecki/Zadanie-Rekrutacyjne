import UIKit

extension UIColor{
    static func startButtonColor() -> UIColor {
        return UIColor(red: 1.0/255.0, green: 128.0/255.0, blue: 0.0, alpha: 1.0)
    }
    
    static func stopButtonActiveColor() -> UIColor{
        return UIColor(red: 178.0/255, green: 34.0/255.0, blue: 34.0/255.0, alpha: 1.0)
    }
    
    static func noActiveButtonColor() -> UIColor{
        return UIColor(red: 192.0/255.0, green: 192.0/255.0, blue: 192.0/255.0, alpha: 1.0)
    }
}
