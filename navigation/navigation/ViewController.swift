//
//  ViewController.swift
//  navigation
//
//  Created by Kahina Lounis on 29/03/2021.
//

import UIKit

class ViewController: UIViewController {
  //  let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func buttonCliqued(_ sender: UIButton) {
       // didTapButton()
        navigateToSecondInterface()
        print("hello")
    }
 
 ///present method
    
   private func navigateToSecondInterface() {
        
        if let newVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController {
            present(newVc, animated: true, completion: nil)
            
        }
    }
    
///pushViewController method
    
  /*  private func navigateToSecondInterface() {
        print("hello from the function")
        if let newVc = UIStoryboard(name : "Main", bundle: nil).instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController  {
        if let navigation = navigationController {
            navigation.pushViewController(newVc, animated: true)
         }
       }
     }*/
    
   
}
