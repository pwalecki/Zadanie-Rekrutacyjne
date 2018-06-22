import UIKit

struct Element: Equatable {
    var elementColor: ElementColor
    var counter: Int
    var id: Int
    
    init(id:Int) {
        self.elementColor = ElementColor.randomColor()
        self.counter = 0
        self.id = id
    }
}
