import UIKit

class MainTimer: NSObject {
    var timer : Timer!
    var isTimerRunning = false
    
    var viewController:MainViewController?
    
    override init() {
        self.viewController  = nil
    }
    
    init(viewController:MainViewController) {
        self.viewController = viewController
    }
    
    func startTimer() {
        if !isTimerRunning{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction) , userInfo: nil, repeats: true)
            isTimerRunning = true
        }
    }
    
    func stopTimer(){
        timer.invalidate()
        isTimerRunning = false
    }
    
    @objc func timerAction(){
        switch Elements.sharedInstance.arrayCount() {
        case 0...4:
            Elements.sharedInstance.addNewElement()
            viewController!.reloadCollectionView()
            break
        case 5:
            actionIfFiveElements()
            break
        default:
            break
        }
    }
    
    func actionIfFiveElements(){
        let randomNumber = Int(arc4random_uniform(UInt32(100)))
        switch randomNumber {
        case 0...49:
            Elements.sharedInstance.increaseCounterInARandomElement()
            viewController?.reloadCollectionView()
            break
        case 50...84:
            Elements.sharedInstance.resetCounterInARandomElement()
            viewController?.reloadCollectionView()
            break
        case 85...94:
            Elements.sharedInstance.removeRandomElement()
            viewController?.reloadCollectionView()
            break
        case 95...100:
            Elements.sharedInstance.addTwoCounterModuloElementsCount()
            viewController?.reloadCollectionView()
            break
        default:
            break
        }
    }
}
