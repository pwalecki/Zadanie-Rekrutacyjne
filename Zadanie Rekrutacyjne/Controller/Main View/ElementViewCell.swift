import UIKit

let elementCellIdentifier = "elementCellIdentifier"
let CELL_WIDTH = 110
let CELL_HEIGHT = 110

class ElementViewCell: UICollectionViewCell {
    
    @IBOutlet weak var circleContentView: UIView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        circleContentView.layer.shadowColor = UIColor.black.cgColor
        circleContentView.layer.shadowRadius = 2
        circleContentView.layer.shadowOffset = CGSize(width: 0, height: 5)
        circleContentView.layer.shadowOpacity = 0.5
        circleContentView.clipsToBounds = true
        circleContentView.layer.cornerRadius = CGFloat(CELL_WIDTH-20)/2
        
    }
    
    func setContentViewWithElement(element:Element){
        
        circleContentView.backgroundColor = element.elementColor.value
        
        if element.elementColor == ElementColor.blueElement {
            counterLabel.text =  String(element.counter * 3)
        }else{
            counterLabel.text =  String(element.counter)
        }      
    }
    
}
