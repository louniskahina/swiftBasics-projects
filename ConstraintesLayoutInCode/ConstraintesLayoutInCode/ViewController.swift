//
//  ViewController.swift
//  ConstraintesLayoutInCode
//
//  Created by Kahina Lounis on 05/04/2021.
//pod : https://github.com/onmyway133/EasyAnchor
//https://medium.com/good-morning-swift/ios-view-controller-life-cycle-2a0f02e74ff5

import UIKit

class ViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.main.bounds

    //anchor2 = multiplier × anchor1 + constant
     let button1 = UIButton()
     let button2 = UIButton()
     let button3 = UIButton()
    
    var landscape:[NSLayoutConstraint]?
    var portrait:[NSLayoutConstraint]?
    var isPortrait : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        button1.backgroundColor = .red
        button1.setTitle("Button1", for: .normal)
        
        button2.backgroundColor = .green
        button2.setTitle("Button2", for: .normal)
        
        button3.backgroundColor = .darkGray
        button3.setTitle("Button3", for: .normal)
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        addConstraints()
    }
    
    private func addConstraints(){
       button1.translatesAutoresizingMaskIntoConstraints = false
       button2.translatesAutoresizingMaskIntoConstraints = false
       button3.translatesAutoresizingMaskIntoConstraints = false
        
       portrait = [
       button1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.height/4),
       button2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.height/2),
       button3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.height*0.75)
       ]
        
       landscape = [
       button1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.width/4),
       button2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.width/2),
       button3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenSize.width*0.75)
       ]
        
       button1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive=true
       button2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive=true
       button3.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive=true
    }
    
    override func viewDidLayoutSubviews() {
        isPortrait = UIDevice.current.orientation.isPortrait
        if isPortrait {
            NSLayoutConstraint.deactivate(landscape!)
            NSLayoutConstraint.activate(portrait!)
            
        }else{
            NSLayoutConstraint.deactivate(portrait!)
            NSLayoutConstraint.activate(landscape!)
       }
    }
    
   /* viewDidLayoutSubviews:
     This method is called after the viewController has been adjust to its subview following a change on its bound.Add code here if you want to make change to subviews after they have been set. */
}

