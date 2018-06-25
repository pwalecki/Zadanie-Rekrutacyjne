import UIKit

struct Elements{
    
    static var sharedInstance = Elements()
    private init () {}
    var elementsArray: [Element] = []
    
    mutating func addNewElement(){
        let idElementu = elementsArray.count+1
        elementsArray.append(Element(id: idElementu))
        
    }
    
    mutating func removeElement(element:Element){
        var index = 0

        for elementTmp:Element in elementsArray {
            
            if elementTmp == element{
                elementsArray.remove(at: index)
                break;
            }
            index += 1
        }
    }
    
    mutating func removeAllElements() {
        elementsArray.removeAll()
    }
    
    func returnElemenetByIndex(index:Int) -> Element {
        return elementsArray[index]
    }
    
    func arrayCount() -> Int {
        return elementsArray.count
    }
    
    mutating func increaseCounterInARandomElement() {
        elementsArray[randomIndex()].counter += 1
    }
    
    mutating func resetCounterInARandomElement(){
        elementsArray[randomIndex()].counter = 0
    }
    
    mutating func removeRandomElement() {
        elementsArray.remove(at: randomIndex())
    }
    
    mutating func addTwoCounter(){
        let index = randomIndex()
        if index > 0 {
            elementsArray[index].counter += elementsArray[index-1].counter
            elementsArray[index].counter = elementsArray[index].counter % elementsArray.count
        }else{
            elementsArray[index].counter = elementsArray[index].counter % elementsArray.count
        }
    }
    
    func randomIndex() -> Int {
        
        return Int(arc4random_uniform(UInt32(elementsArray.count)))
        
    }
    
    
}
