import XCTest
@testable import Zadanie_Rekrutacyjne

class TimerTests: XCTestCase {
    
    var timer: MainTimer!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: MainViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        timer = MainTimer(viewController: vc)
    }
    
    override func tearDown() {
        super.tearDown()
        timer = nil
    }
    
    func testTimer() {
        
        XCTAssertNotNil(timer)
        XCTAssertNotNil(timer.viewController)
        XCTAssertFalse(timer.isTimerRunning, "Timer should be stop")
        timer.startTimer()
        XCTAssertTrue(timer.isTimerRunning, "Timer should be run")
        timer.stopTimer()
        XCTAssertFalse(timer.isTimerRunning, "Timer stop run")

    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
