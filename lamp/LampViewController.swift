//
//  ViewController.swift
//  lamp
//
//  Created by Diplomado on 28/09/24.
//

import UIKit

class LampViewController: UIViewController {
    
    
    private var customView: LampView{
        return view as! LampView
    }
    
    override func loadView() {
        view = LampView()
    }
    
    var lampState: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lampState.toggle()
        customView.backgroundColor = .white
        customView.lampButton.addAction(UIAction(handler: switchLamp(_:)), for: .touchUpInside)
    }

    func switchLamp(_ sender: UIAction) {
        lampState = !lampState
        if lampState {
            customView.lampImage.tintColor = .systemYellow
            customView.lampButton.setTitle("Turn off", for: .normal)
            customView.lampImage.image = UIImage(systemName: "lightbulb.fill")
            customView.backgroundColor = .white
        } else {
            customView.lampImage.tintColor = .white
            customView.lampButton.setTitle("Turn on", for: .normal)
            customView.lampImage.image = UIImage(systemName: "lightbulb")
            customView.backgroundColor = .black
        }
    }
}

