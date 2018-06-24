//
//  MainViewController.swift
//  Zadanie Rekrutacyjne
//
//  Created by Paweł Walecki on 22.06.2018.
//  Copyright © 2018 Paweł Walecki. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopResetButton: UIButton!
    
    var timer : MainTimer = MainTimer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = MainTimer(viewController: self)
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: - Buttons Action
    
    @IBAction func startTimerAction(_ sender: Any) {
        timer.startTimer()
    }
    

    @IBAction func stopResetTimerAction(_ sender: Any) {
        if timer.isTimerRunning{
        timer.stopTimer()
        }else{
            Elements.sharedInstance.removeAllElements()
            collectionView.reloadData()
        }
    }
    
    func reloadCollectionView() {
        collectionView.reloadData()
    }
    
    // Mark: - Collection View Methods
    
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
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
