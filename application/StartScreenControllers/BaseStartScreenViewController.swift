//
//  BaseStartScreenViewController.swift
//  application
//
//  Created by Егорио on 28.09.2024.
//

import UIKit

class BaseStartScreenViewController: UIViewController {
    
    let mainLabel = UILabel.createMainLabel(withText: "")
    let secondaryLabel = UILabel.createSecondaryLabel(withText: "")
    let imageView = UIImageView.createImageView(withImageName: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    // Настройка интерфейса
    private func setupLayout() {
        view.addSubview(mainLabel)
        view.addSubview(secondaryLabel)
        view.addSubview(imageView)
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenHeight * 0.02),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainLabel.widthAnchor.constraint(equalToConstant: screenWidth - 40),
            
            secondaryLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: screenHeight * 0.03),
            secondaryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondaryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondaryLabel.widthAnchor.constraint(equalToConstant: screenWidth - 40),
            
            imageView.topAnchor.constraint(equalTo: secondaryLabel.bottomAnchor, constant: screenHeight * 0.05),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: screenWidth * 0.8),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
    }
    
    // Метод для конфигурации лейблов и изображения
    func configure(mainText: String, secondaryText: String, imageName: String) {
        mainLabel.text = mainText
        secondaryLabel.text = secondaryText
        imageView.image = UIImage(named: imageName)
    }
}
