//
//  MainViewController.swift
//  Zadanie Rekrutacyjne
//
//  Created by Paweł Walecki on 22.06.2018.
//  Copyright © 2018 Paweł Walecki. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopResetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
