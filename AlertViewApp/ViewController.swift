//
//  ViewController.swift
//  AlertViewApp
//
//  Created by sabari-pt4418 on 18/05/22.
//

import UIKit
import UEMPodLibrary
import SCLAlertView

class ViewController: UIViewController {

    var centerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("click", for: .normal)
        button.addTarget(self, action: #selector(onButtonPressed(_ :)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(centerButton)
        view.backgroundColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        NSLayoutConstraint.activate([
            centerButton.widthAnchor.constraint(equalToConstant: 150),
            centerButton.heightAnchor.constraint(equalToConstant: 50),
            centerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func onButtonPressed(_ sender: UIButton){
        
        let view = SwiftView()
        view.printSomething()
        SCLAlertView().showError("Hello Error", subTitle: "This is a more descriptive error text.") // Error
        
    }
    
    @objc func onFirstButtonPressed(_ sender: UIButton){
        print("first button touched")
        
    }
}

class CustomAlertView: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y, width: view.frame.width, height: 20)
    }
}

//class inkPen: SwiftView
