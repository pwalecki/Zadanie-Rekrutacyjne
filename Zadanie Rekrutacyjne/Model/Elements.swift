import UIKit

struct Elements{
    
//    static let sharedInstance = Elements()
//    private init () {}
    var elementsArray: [Element] = []

    mutating func addNewElement(){
        let idElementu = elementsArray.count+1
        elementsArray.append(Element(id: idElementu))
        
    }
    
    mutating func removeElement(element:Element){
        let index = 0
        
        for elementTmp:Element in elementsArray {
            
            if elementTmp == element{
                elementsArray.remove(at: index)
                break;
            }
                index+1
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
    
}
