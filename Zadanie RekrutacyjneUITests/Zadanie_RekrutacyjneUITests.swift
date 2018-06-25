import XCTest

class Zadanie_RekrutacyjneUITests: XCTestCase {
    
    var app : XCUIApplication!
    
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStartStopResetAction() {
        var i = 0
        
        while i <= 20 {
            app.buttons["start"].tap()
            expectation(for: NSPredicate(format: "count => 5"), evaluatedWith: app.collectionViews.cells, handler: nil)
            waitForExpectations(timeout: 10, handler: nil)
            self.app.buttons["stopReset"].tap()
                self.app.buttons["stopReset"].tap()
            i += 1
            }
        }
    
    func testButton(){
        var i = 0
        while i < 50{
            app.buttons["start"].tap()
            app.buttons["stopReset"].tap()
            i += 1
        }
        
    }
    
}
