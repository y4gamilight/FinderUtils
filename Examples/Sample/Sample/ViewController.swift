//
//  ViewController.swift
//  Sample
//
//  Created by Hai Nguyen Thanh on 8/18/18.
//  Copyright © 2018 Hai Nguyen Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let alert = UIAlertController(title: "Finder Utils", message: "OSX Finder has reveal a directory at \(documentsPath)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tks", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

