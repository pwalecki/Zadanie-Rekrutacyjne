import XCTest
@testable import Zadanie_Rekrutacyjne

class ElementTests: XCTestCase {
    
    //Element
    var blueElement: Element!
    var redElement: Element!
    var randomElement: Element!
    
    override func setUp() {
        super.setUp()
        
        blueElement = Element(id: 1)
        blueElement.elementColor = ElementColor.blueElement
        
        redElement = Element(id: 2)
        redElement.elementColor = ElementColor.redElement
        
        randomElement = Element(id: 3)
        randomElement.elementColor = ElementColor.randomColor()
    
    }
    
    override func tearDown() {
        super.tearDown()
        blueElement = nil
        redElement = nil
        randomElement = nil
    }
    
    func testElement(){
        
        XCTAssertNotNil(blueElement)
        XCTAssertNotNil(redElement)
        XCTAssertNotNil(randomElement)
        
        XCTAssertEqual(blueElement.elementColor, ElementColor.blueElement, "Element should be blue")
        XCTAssertNotEqual(blueElement.elementColor, ElementColor.redElement, "Element should not be blue")
        XCTAssertEqual(redElement.elementColor, ElementColor.redElement, "Element should be red")
        XCTAssertNotEqual(redElement.elementColor, ElementColor.blueElement, "Element should not be Red")
        XCTAssert(randomElement.elementColor == ElementColor.redElement || randomElement.elementColor == ElementColor.blueElement,"Blue or Red")
    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
