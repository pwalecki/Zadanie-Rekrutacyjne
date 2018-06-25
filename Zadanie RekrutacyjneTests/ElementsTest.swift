import XCTest
@testable import Zadanie_Rekrutacyjne

class ElementsTest: XCTestCase {
  
    //Elements
    var elements: Elements!
    
    override func setUp() {
        super.setUp()
        
        elements = Elements.sharedInstance

    }
    
    override func tearDown() {
        super.tearDown()
        elements = nil
    }
    
    func testElements(){
        XCTAssertNotNil(elements)
        XCTAssertNotNil(elements.elementsArray)
        
        //check adding and removeing elements
        XCTAssertEqual(elements.arrayCount(), 0, "Array should be empty")
        elements.addNewElement()
        elements.addNewElement()
        XCTAssertEqual(elements.arrayCount(), 2, "In array should be 2 elements")
        elements.removeRandomElement()
        XCTAssertEqual(elements.arrayCount(), 1, "Should be removed 1 random element from array")
        elements.addNewElement()
        elements.addNewElement()
        XCTAssertEqual(elements.arrayCount(), 3, "Should be 3 elements in array")
        elements.removeAllElements()
        XCTAssertEqual(elements.arrayCount(), 0, "Should be removed all elements in array")
        
        //increase element counter
        elements.addNewElement()
        elements.addNewElement()
        elements.addNewElement()
        XCTAssertEqual(elements.arrayCount(), 3, "Should be 3 elements in array")
        XCTAssert(elements.elementsArray[0].counter == 0 && elements.elementsArray[1].counter == 0 && elements.elementsArray[2].counter == 0, "all counter = 0")
        elements.increaseCounterInARandomElement()
        XCTAssert(elements.elementsArray[0].counter == 1 || elements.elementsArray[1].counter == 1 || elements.elementsArray[2].counter == 1, "any counter = 1")
        elements.removeAllElements()
        
        //reset any element
        
        XCTAssertEqual(elements.arrayCount(), 0)
        elements.addNewElement()
        elements.addNewElement()
        elements.addNewElement()
        elements.elementsArray[0].counter = 1
        elements.elementsArray[1].counter = 1
        elements.elementsArray[2].counter = 1
        elements.resetCounterInARandomElement()
        XCTAssert(elements.elementsArray[0].counter == 0 || elements.elementsArray[1].counter == 0 || elements.elementsArray[2].counter == 0, "any counter reset and is = 0")
        
    }
    
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
