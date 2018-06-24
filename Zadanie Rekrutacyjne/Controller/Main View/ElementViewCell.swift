import UIKit

let elementCellIdentifier = "elementCellIdentifier"

class ElementViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var contentShadowView: UIView!
    @IBOutlet weak var circleContentView: UIView!
    @IBOutlet weak var counterLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentShadowView.layer.shadowColor = UIColor.lightGray.cgColor
        contentShadowView.layer.shadowRadius = 2
        contentShadowView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentShadowView.layer.shadowOpacity = 0.2
        contentShadowView.clipsToBounds = true
        contentShadowView.backgroundColor = UIColor.lightGray
        contentShadowView.layer.cornerRadius = contentShadowView.frame.size.height/2
        
        circleContentView.clipsToBounds = true
        circleContentView.layer.cornerRadius = circleContentView.frame.size.height/2
        
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
