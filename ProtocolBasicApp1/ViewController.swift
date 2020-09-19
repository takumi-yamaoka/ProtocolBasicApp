//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by 山岡巧 on 2020/08/04.
//  Copyright © 2020 takumi.yamaoka. All rights reserved.
//

import UIKit

// Plotocolを宣言する
class ViewController: UIViewController, CatchProtocol {
    @IBOutlet weak var label: UILabel!
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func cachData(count: Int) {
        label.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
        
    }
    
}

