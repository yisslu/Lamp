//
//  ViewController.swift
//  lamp
//
//  Created by Diplomado on 28/09/24.
//

import UIKit

class LampViewController: UIViewController {
    
    @IBOutlet weak var lamp: UIButton!
    var lampState: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lamp.tintColor = .yellow
        lampState.toggle()
    }

    @IBAction func switchLamp(_ sender: UIButton) {
        lampState = !lampState
        if lampState {
            lamp.tintColor = .yellow
            lamp.setImage(UIImage(named: "lightbulb.max.fill"), for: .normal)
            overrideUserInterfaceStyle = .light
        } else {
            lamp.tintColor = .white
            lamp.setImage(UIImage(named: "lightbulb.min"), for: .normal)
            overrideUserInterfaceStyle = .dark
        }
    }
}

