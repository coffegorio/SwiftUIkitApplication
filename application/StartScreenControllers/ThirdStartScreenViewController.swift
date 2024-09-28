//
//  ThirdStartScreenViewController.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

class ThirdStartScreenViewController: BaseStartScreenViewController {

    private let startScreenButton = UIButton.createStartScreenButton(withTitle: "Вперед!")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure(mainText: "Кастомизируйте свой профиль",
                  secondaryText: "Сделайте свой профиль уникальным! Выбирайте фото, настраивайте биографию...",
                  imageName: "profile")
        setupButton()
    }

    private func setupButton() {
        view.addSubview(startScreenButton)
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        NSLayoutConstraint.activate([
            startScreenButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: screenHeight * 0.02),
            startScreenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            startScreenButton.widthAnchor.constraint(equalToConstant: screenWidth * 0.4),
            startScreenButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        startScreenButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }

    @objc private func goHomeScreen() {
        let homeScreen = HomeScreenController()
        homeScreen.modalPresentationStyle = .fullScreen
        self.present(homeScreen, animated: true, completion: nil)
    }
}
