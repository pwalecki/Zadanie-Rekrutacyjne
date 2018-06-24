import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        imageView.image = #imageLiteral(resourceName: "background")
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        view.insertSubview(imageView, at: 0)
        view.backgroundColor = UIColor.clear

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
