//
//  LampView.swift
//  lamp
//
//  Created by Diplomado on 19/10/24.
//

import UIKit

class LampView: UIView {
    
    lazy var lampImage: UIImageView = {
        let lampImageView = UIImageView(image: UIImage(systemName: "lightbulb.fill"))
        lampImageView.tintColor = .systemYellow
        lampImageView.translatesAutoresizingMaskIntoConstraints = false
        return lampImageView
    }()
    
    lazy var lampButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Turn off", for: .normal)
        var configuration = UIButton.Configuration.plain()
        configuration.background.backgroundColor = .systemGray
        configuration.baseForegroundColor = .systemGray6
        configuration.cornerStyle = .large
        button.configuration = configuration
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        imagePosition()
        addButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func imagePosition() {
        NSLayoutConstraint.activate([
            lampImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            lampImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            lampImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            lampImage.widthAnchor.constraint(equalTo: lampImage.heightAnchor, multiplier: 1)
            ])
    }
    
    private func addButton(){
        NSLayoutConstraint.activate([
            lampButton.topAnchor.constraint(equalTo: lampImage.bottomAnchor, constant: 16),
            lampButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            lampButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func addViews() {
        addSubview(lampImage)
        addSubview(lampButton)
    }
}
