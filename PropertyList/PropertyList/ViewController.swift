//
//  ViewController.swift
//  PropertyList
//
//  Created by Kahina Lounis on 08/05/2021.
//

import UIKit

class ViewController: UIViewController {

    
    private var nomArray: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "MyList", ofType: "plist")
               let dict = NSDictionary(contentsOfFile: path!)
               
               tableData = dict!.objectForKey("Version Code") as! [String]
               tableValues = dict!.objectForKey("OSX") as! [String]
    }
    
  

}

