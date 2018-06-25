import UIKit

var kDecoratorViewKind = "DecoratorView"

class DecoratorView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        imageView.image = #imageLiteral(resourceName: "separatorLine")
        addSubview(imageView)
        backgroundColor = UIColor.clear
        
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
