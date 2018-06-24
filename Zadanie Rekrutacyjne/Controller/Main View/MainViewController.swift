import UIKit

class MainViewController: BaseViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    //buttons
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopResetButton: UIButton!
    //labels
    @IBOutlet weak var noElementsLabel: UILabel!
    
    var timer : MainTimer = MainTimer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = MainTimer(viewController: self)
        prepareView()
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Methodes
    
    private func prepareView(){
        noElementsLabel.text = "no_elements_label".localized
        buttonView.backgroundColor = UIColor.clear
        
        //CollectionView
        collectionView.backgroundColor  = UIColor.clear
        
        //Buttons
        startButton.setLayer()
        startButton.setImageTitleAndColor(image: UIImage(named: "round_play_circle_outline_black_36dp")!, titleText: "start_button".localized, color: UIColor.startButtonColor())
        
        stopResetButton.setLayer()
        stopResetButton.setImageTitleAndColor(image: UIImage(named: "round_pause_circle_outline_black_36dp")!, titleText: "stop_button".localized, color: UIColor.stopButtonNoActiveColor())
    }
    
    // MARK: - Buttons Action
    
    @IBAction func startTimerAction(_ sender: Any) {
        
        if !timer.isTimerRunning {
            noElementsLabel.isHidden = true
            timer.startTimer()
            
            if stopResetButton.titleLabel?.text == "reset_button".localized {
                stopResetButton.setImageTitleAndColor(image: UIImage(named: "round_pause_circle_outline_black_36dp")!, titleText: "stop_button".localized, color: UIColor.stopButtonActiveColor())
            }else{
                stopResetButton.changeTintColor(tintColor: UIColor.stopButtonActiveColor())
            }
        }
    }
    
    
    @IBAction func stopResetTimerAction(_ sender: Any) {
        if timer.isTimerRunning{
            timer.stopTimer()
            stopResetButton.setImageTitleAndColor(image: UIImage(named: "round_clear_black_36dp")!, titleText: "reset_button".localized, color: UIColor.stopButtonActiveColor())
            
            if Elements.sharedInstance.arrayCount() == 0{
                noElementsLabel.isHidden = false
                stopResetButton.setImageTitleAndColor(image: UIImage(named: "round_pause_circle_outline_black_36dp")!, titleText: "stop_button".localized, color: UIColor.stopButtonNoActiveColor())
            }
        }else if Elements.sharedInstance.arrayCount() > 0{
            Elements.sharedInstance.removeAllElements()
            stopResetButton.setImageTitleAndColor(image: UIImage(named: "round_pause_circle_outline_black_36dp")!, titleText: "stop_button".localized, color: UIColor.stopButtonNoActiveColor())
            collectionView.reloadData()
            noElementsLabel.isHidden = false
        }
    }
    
    public func reloadCollectionView() {
        collectionView.reloadData()
    }
    
    // MARK: - Collection View Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Elements.sharedInstance.arrayCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ElementViewCell =  collectionView.dequeueReusableCell(withReuseIdentifier:    elementCellIdentifier , for: indexPath) as! ElementViewCell
        
        cell.setContentViewWithElement(element: Elements.sharedInstance.returnElemenetByIndex(index: indexPath.row))
        
        return cell;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
