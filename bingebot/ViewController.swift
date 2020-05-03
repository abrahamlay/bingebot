//
//  ViewController.swift
//  bingebot
//
//  Created by Abraham Lay (ID) on 05/04/20.
//  Copyright © 2020 Abraham Lay (ID). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showsLabel: UILabel!
    
    @IBOutlet weak var randomedShowLabel: UILabel!
    
    @IBOutlet weak var bingebotSpokenLabel: UILabel!
    
    @IBOutlet weak var enterShowTextField: UITextField!
    
    @IBOutlet weak var addShowButton: UIButton!
    
    @IBOutlet weak var randomShowStackView: UIStackView!
    
    @IBOutlet weak var addShowStackView: UIStackView!
    
    @IBOutlet weak var showsStackView: UIStackView!
    
    @IBOutlet weak var randomShowButton: UIButton!
    
    var shows :[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsStackView.isHidden = true
        randomShowStackView.isHidden = true
        bingebotSpokenLabel.isHidden = true
        randomedShowLabel.isHidden = true
    }

    @IBAction func randomBingeShowButtonClicked(_ sender: Any) {
        randomedShowLabel.text = shows.randomElement()
        randomedShowLabel.isHidden = false
        bingebotSpokenLabel.isHidden = false
    }
    @IBAction func onAddShowButtonClicked(_ sender: Any) {
        guard let showName = enterShowTextField.text else {return}
        if enterShowTextField.text != ""{
            shows.append(showName)
            updateShowsLabel()
            enterShowTextField.text = ""
            showsStackView.isHidden = false
            
            if shows.count > 1{
                randomShowStackView.isHidden = false
            }
        }
    }
    
    func updateShowsLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
}

