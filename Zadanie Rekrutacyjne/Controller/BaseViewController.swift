//
//  BaseViewController.swift
//  Zadanie Rekrutacyjne
//
//  Created by Paweł Walecki on 22.06.2018.
//  Copyright © 2018 Paweł Walecki. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        imageView.image = #imageLiteral(resourceName: "background")
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        view.insertSubview(imageView, at: 0)
        view.backgroundColor = UIColor.clear
        
        
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
