import XCTest
@testable import Zadanie_Rekrutacyjne

class MainViewControllerTests: XCTestCase {
    
    var viewController: MainViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        _ = viewController.view
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testView(){
        XCTAssertNotNil(viewController.view, "Should not be nil")
    }
    
    func testCollectionView(){
        XCTAssertNotNil(viewController.collectionView, "CollectionView should not be nil")
        XCTAssertNotNil(viewController.collectionView.dataSource, "CollectionView should be set data source")
        XCTAssertNotNil(viewController.collectionView.delegate, "CollectionView should be set delegate")
   
    }
    
    func testPerformanceExample() {
        self.measure {
        }
    }
    
}
