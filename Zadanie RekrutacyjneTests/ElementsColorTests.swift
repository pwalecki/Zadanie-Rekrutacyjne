import XCTest
@testable import Zadanie_Rekrutacyjne

class ElementsColorTests: XCTestCase {
    
    var elementColor: ElementColor!

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testElementColor() {
        XCTAssertNil(elementColor)
        
        elementColor = ElementColor.randomColor()
        XCTAssertNotNil(elementColor,"should not be nil")
        XCTAssert(elementColor == ElementColor.redElement || elementColor == ElementColor.blueElement)
        
        elementColor = ElementColor.redElement
        XCTAssertEqual(elementColor, ElementColor.redElement, "should be red")
        XCTAssertNotEqual(elementColor, ElementColor.blueElement, "should not be blue")
        
        elementColor = ElementColor.blueElement
        XCTAssertEqual(elementColor, ElementColor.blueElement, "should be blue")
        XCTAssertNotEqual(elementColor, ElementColor.redElement, "should not be red")
    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
