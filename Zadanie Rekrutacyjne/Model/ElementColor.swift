import UIKit

enum ElementColor {
    case blueElement
    case redElement
    
    static func randomColor() -> ElementColor{
        let colors: [ElementColor] = [ElementColor.blueElement,ElementColor.redElement]
        let random = colors[Int(arc4random_uniform(UInt32(colors.count)))]
        return random
    }
}

extension ElementColor {
    var value: UIColor {
        get {
            switch self {
            case .blueElement:
                return UIColor.blue
            case .redElement:
                return UIColor.red
            }
        }
    }
}
