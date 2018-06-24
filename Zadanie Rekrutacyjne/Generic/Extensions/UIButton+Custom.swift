import UIKit

extension UIButton{
    func setLayer() {
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 15.0
        self.layer.shadowOffset = CGSize(width: 5, height: 5);
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
    }
    
    func setImageTitleAndColor(image:UIImage, titleText:String, color:UIColor){
        self.layer.borderColor = color.cgColor
        self.setImage(image, for: UIControlState.normal)
        self.setTitle(titleText, for: UIControlState.normal)
        self.setTitleColor(color, for: UIControlState.normal)
        self.tintColor = color
    }
    
}
